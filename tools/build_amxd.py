#!/usr/bin/env python3
"""Repackage the current Max JSON patcher into a reproducible AMXD candidate.

Based on the provided Pitch Pipe P3 AMXD container structure. This is NOT a
replacement for Max's Freeze command and cannot certify runtime compatibility.
"""
from __future__ import annotations
import argparse
import json
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "src" / "Pitch Pipe P3.maxpat"
DEST = ROOT / "dist" / "Pitch Pipe P3.amxd"
MAC_EPOCH_OFFSET = 2082844800
DEFAULT_MDAT = 1792195200 + MAC_EPOCH_OFFSET  # Fixed 2026-10-17 UTC

def be32(value: int) -> bytes:
    return struct.pack(">I", value)

def le32(value: int) -> bytes:
    return struct.pack("<I", value)

def encode_amxd(patch_bytes: bytes, filename: str = "Pitch Pipe P3.amxd", mdat: int = DEFAULT_MDAT) -> bytes:
    """Wrap UTF-8 JSON in the observed ampf/mx@c archive format."""
    if not 0 <= mdat <= 0xffffffff:
        raise ValueError("mdat outside 32-bit range")
    if "patcher" not in json.loads(patch_bytes):
        raise ValueError("Missing patcher")
    name = filename.encode("utf-8")
    name += b"\0" * (-len(name) % 4)
    tail = (
        b"\0dlst\0\0\0tdire\0\0\0ltype" + be32(12) + b"JSON"
        + b"fnam" + be32(8 + len(name)) + name
        + b"sz32" + be32(12) + be32(len(patch_bytes))
        + b"of32" + be32(12) + be32(16)
        + b"vers" + be32(12) + be32(0)
        + b"flag" + be32(12) + be32(17)
        + b"mdat" + be32(12) + be32(mdat)
    )
    header = (
        b"ampf" + le32(4) + b"aaaa" + b"meta" + le32(4) + le32(7)
        + b"ptch" + le32(48 + len(patch_bytes) + len(tail) - 32)
        + b"mx@c" + be32(16) + be32(0) + be32(len(patch_bytes) + 17)
    )
    return header + patch_bytes + tail

def decode_amxd(blob: bytes) -> bytes:
    if len(blob) < 70 or blob[:4] != b"ampf" or blob[32:36] != b"mx@c":
        raise ValueError("Invalid AMXD wrapper")
    if struct.unpack_from("<I", blob, 28)[0] != len(blob) - 32:
        raise ValueError("Container length mismatch")
    if struct.unpack_from(">I", blob, 36)[0] != 16:
        raise ValueError("Unexpected mx@c field")
    size = struct.unpack_from(">I", blob, 44)[0] - 17
    if size <= 0 or len(blob) < 48 + size:
        raise ValueError("Invalid embedded patch size")
    payload = blob[48:48 + size]
    json.loads(payload)
    if b"JSONfnam" not in blob[48 + size:]:
        raise ValueError("Missing JSON directory")
    return payload

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--src", type=Path, default=SOURCE)
    parser.add_argument("--out", type=Path, default=DEST)
    args = parser.parse_args()
    raw = args.src.read_bytes()
    candidate = encode_amxd(raw)
    assert decode_amxd(candidate) == raw
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_bytes(candidate)
    print(f"Built {args.out} ({len(candidate)} bytes)")

if __name__ == "__main__":
    main()

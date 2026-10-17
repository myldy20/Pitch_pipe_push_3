{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      90,
      90,
      1470,
      1070
    ],
    "openrect": [
      0,
      0,
      505,
      162
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 11,
    "default_fontface": 0,
    "default_fontname": "Ableton Sans Medium",
    "gridonopen": 1,
    "gridsize": [
      10,
      10
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "devicewidth": 505,
    "description": "Push 3 Standalone friendly pitch tuner and reference oscillator; rebuilt from core Pitch Pipe concept by Iftah.",
    "digest": "Native Max/MSP pitch detection + reference oscillator, with Push parameter banks.",
    "tags": "tuner pitch pipe push standalone maxforlive",
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            40,
            23,
            380,
            25
          ],
          "text": "PITCH PIPE / P3",
          "presentation": 1,
          "presentation_rect": [
            14,
            9,
            170,
            22
          ],
          "textcolor": [
            0.96,
            0.68,
            0.16,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            40,
            48,
            500,
            18
          ],
          "text": "Standalone edition | core concept: Iftah Pitch Pipe",
          "presentation": 1,
          "presentation_rect": [
            184,
            12,
            300,
            20
          ],
          "textcolor": [
            0.54,
            0.58,
            0.66,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            40,
            80,
            260,
            18
          ],
          "text": "INPUT / LIVE TUNER",
          "presentation": 1,
          "presentation_rect": [
            14,
            36,
            180,
            16
          ],
          "textcolor": [
            0.75,
            0.8,
            0.88,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            500,
            80,
            250,
            18
          ],
          "text": "REFERENCE OSCILLATOR",
          "presentation": 1,
          "presentation_rect": [
            14,
            102,
            200,
            18
          ],
          "textcolor": [
            0.75,
            0.8,
            0.88,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            70,
            118,
            120,
            20
          ],
          "annotation": "Incoming single-note pitch. Read-only display on Push; may be turned but detection resets it.",
          "presentation": 1,
          "presentation_rect": [
            14,
            60,
            111,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Detected Note",
              "parameter_shortname": "Note",
              "parameter_order": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_enum": [
                "No Signal",
                "C-1",
                "C#-1",
                "D-1",
                "D#-1",
                "E-1",
                "F-1",
                "F#-1",
                "G-1",
                "G#-1",
                "A-1",
                "A#-1",
                "B-1",
                "C0",
                "C#0",
                "D0",
                "D#0",
                "E0",
                "F0",
                "F#0",
                "G0",
                "G#0",
                "A0",
                "A#0",
                "B0",
                "C1",
                "C#1",
                "D1",
                "D#1",
                "E1",
                "F1",
                "F#1",
                "G1",
                "G#1",
                "A1",
                "A#1",
                "B1",
                "C2",
                "C#2",
                "D2",
                "D#2",
                "E2",
                "F2",
                "F#2",
                "G2",
                "G#2",
                "A2",
                "A#2",
                "B2",
                "C3",
                "C#3",
                "D3",
                "D#3",
                "E3",
                "F3",
                "F#3",
                "G3",
                "G#3",
                "A3",
                "A#3",
                "B3",
                "C4",
                "C#4",
                "D4",
                "D#4",
                "E4",
                "F4",
                "F#4",
                "G4",
                "G#4",
                "A4",
                "A#4",
                "B4",
                "C5",
                "C#5",
                "D5",
                "D#5",
                "E5",
                "F5",
                "F#5",
                "G5",
                "G#5",
                "A5",
                "A#5",
                "B5",
                "C6",
                "C#6",
                "D6",
                "D#6",
                "E6",
                "F6",
                "F#6",
                "G6",
                "G#6",
                "A6",
                "A#6",
                "B6",
                "C7",
                "C#7",
                "D7",
                "D#7",
                "E7",
                "F7",
                "F#7",
                "G7",
                "G#7",
                "A7",
                "A#7",
                "B7",
                "C8",
                "C#8",
                "D8",
                "D#8",
                "E8",
                "F8",
                "F#8",
                "G8",
                "G#8",
                "A8",
                "A#8",
                "B8",
                "C9",
                "C#9",
                "D9",
                "D#9",
                "E9",
                "F9",
                "F#9",
                "G9"
              ],
              "parameter_mmax": 128,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Incoming single-note pitch. Read-only display on Push; may be turned but detection resets it.",
              "parameter_invisible": 4
            }
          },
          "parameter_enable": 1,
          "varname": "P3_detnote",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            210,
            118,
            120,
            20
          ],
          "annotation": "Deviation from the nearest semitone in cents. Read-only status.",
          "presentation": 1,
          "presentation_rect": [
            132,
            60,
            78,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Detune Cents",
              "parameter_shortname": "Cents",
              "parameter_order": 2,
              "parameter_modmode": 0,
              "parameter_type": 0,
              "parameter_mmin": -50,
              "parameter_mmax": 50,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Deviation from the nearest semitone in cents. Read-only status.",
              "parameter_invisible": 4
            }
          },
          "parameter_enable": 1,
          "varname": "P3_detcents",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            350,
            118,
            120,
            20
          ],
          "annotation": "Measured frequency in Hz. Read-only status.",
          "presentation": 1,
          "presentation_rect": [
            218,
            60,
            92,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Detected Hz",
              "parameter_shortname": "Hz",
              "parameter_order": 3,
              "parameter_modmode": 0,
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 3000,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Measured frequency in Hz. Read-only status.",
              "parameter_invisible": 4
            }
          },
          "parameter_enable": 1,
          "varname": "P3_dethz",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            490,
            118,
            120,
            20
          ],
          "annotation": "Incoming channel level in percent. Read-only status.",
          "presentation": 1,
          "presentation_rect": [
            318,
            60,
            79,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Input Level",
              "parameter_shortname": "Input",
              "parameter_order": 4,
              "parameter_modmode": 0,
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Incoming channel level in percent. Read-only status.",
              "parameter_invisible": 4
            }
          },
          "parameter_enable": 1,
          "varname": "P3_signal",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            70,
            207,
            120,
            20
          ],
          "annotation": "A4 reference frequency for tuning (400-480 Hz).",
          "presentation": 1,
          "presentation_rect": [
            14,
            126,
            80,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "A4 Reference",
              "parameter_shortname": "A4 Hz",
              "parameter_order": 5,
              "parameter_modmode": 0,
              "parameter_type": 0,
              "parameter_mmin": 400,
              "parameter_mmax": 480,
              "parameter_initial": [
                440
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "A4 reference frequency for tuning (400-480 Hz)."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_base",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            208,
            207,
            120,
            20
          ],
          "text": "Off",
          "annotation": "Turn on the synthesized reference tone.",
          "presentation": 1,
          "presentation_rect": [
            102,
            126,
            65,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Tone Enable",
              "parameter_shortname": "Tone",
              "parameter_order": 6,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Turn on the synthesized reference tone."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_toneon",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            ""
          ],
          "texton": "On"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            340,
            207,
            120,
            20
          ],
          "annotation": "Pitch of the reference oscillator (C4=60, A4=69).",
          "presentation": 1,
          "presentation_rect": [
            174,
            126,
            91,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Tone Note",
              "parameter_shortname": "Pitch",
              "parameter_order": 7,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_enum": [
                "C-1",
                "C#-1",
                "D-1",
                "D#-1",
                "E-1",
                "F-1",
                "F#-1",
                "G-1",
                "G#-1",
                "A-1",
                "A#-1",
                "B-1",
                "C0",
                "C#0",
                "D0",
                "D#0",
                "E0",
                "F0",
                "F#0",
                "G0",
                "G#0",
                "A0",
                "A#0",
                "B0",
                "C1",
                "C#1",
                "D1",
                "D#1",
                "E1",
                "F1",
                "F#1",
                "G1",
                "G#1",
                "A1",
                "A#1",
                "B1",
                "C2",
                "C#2",
                "D2",
                "D#2",
                "E2",
                "F2",
                "F#2",
                "G2",
                "G#2",
                "A2",
                "A#2",
                "B2",
                "C3",
                "C#3",
                "D3",
                "D#3",
                "E3",
                "F3",
                "F#3",
                "G3",
                "G#3",
                "A3",
                "A#3",
                "B3",
                "C4",
                "C#4",
                "D4",
                "D#4",
                "E4",
                "F4",
                "F#4",
                "G4",
                "G#4",
                "A4",
                "A#4",
                "B4",
                "C5",
                "C#5",
                "D5",
                "D#5",
                "E5",
                "F5",
                "F#5",
                "G5",
                "G#5",
                "A5",
                "A#5",
                "B5",
                "C6",
                "C#6",
                "D6",
                "D#6",
                "E6",
                "F6",
                "F#6",
                "G6",
                "G#6",
                "A6",
                "A#6",
                "B6",
                "C7",
                "C#7",
                "D7",
                "D#7",
                "E7",
                "F7",
                "F#7",
                "G7",
                "G#7",
                "A7",
                "A#7",
                "B7",
                "C8",
                "C#8",
                "D8",
                "D#8",
                "E8",
                "F8",
                "F#8",
                "G8",
                "G#8",
                "A8",
                "A#8",
                "B8",
                "C9",
                "C#9",
                "D9",
                "D#9",
                "E9",
                "F9",
                "F#9",
                "G9"
              ],
              "parameter_mmax": 127,
              "parameter_initial": [
                69
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Pitch of the reference oscillator (C4=60, A4=69)."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_tonenote",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            480,
            207,
            120,
            20
          ],
          "annotation": "Output level for reference oscillator, 0-0.3.",
          "presentation": 1,
          "presentation_rect": [
            273,
            126,
            76,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Tone Level",
              "parameter_shortname": "Level",
              "parameter_order": 8,
              "parameter_modmode": 0,
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 0.3,
              "parameter_initial": [
                0.1
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Output level for reference oscillator, 0-0.3."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_tonelevel",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            640,
            207,
            120,
            20
          ],
          "text": "Sine",
          "annotation": "Sine is smooth; Saw has rich harmonics.",
          "presentation": 1,
          "presentation_rect": [
            357,
            126,
            65,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Waveform",
              "parameter_shortname": "Wave",
              "parameter_order": 9,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_enum": [
                "Sine",
                "Saw"
              ],
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Sine is smooth; Saw has rich harmonics."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_wave",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            ""
          ],
          "texton": "Saw"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            770,
            207,
            120,
            20
          ],
          "text": "Off",
          "annotation": "Pass the input signal through the effect.",
          "presentation": 1,
          "presentation_rect": [
            430,
            126,
            56,
            24
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Audio Thru",
              "parameter_shortname": "Thru",
              "parameter_order": 10,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmax": 1,
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_info": "Pass the input signal through the effect."
            }
          },
          "parameter_enable": 1,
          "varname": "P3_thru",
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "outlettype": [
            "",
            ""
          ],
          "texton": "On"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 2,
          "patching_rect": [
            70,
            312,
            80,
            22
          ],
          "text": "plugin~"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            160,
            314,
            40,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            214,
            314,
            65,
            22
          ],
          "text": "*~ 0.5"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            289,
            314,
            78,
            22
          ],
          "text": "hip~ 45."
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            380,
            315,
            560,
            22
          ],
          "text": "fzero~ @freqmin 25 @freqmax 1800 @size 4096 @period 2048 @threshold 0.012 @quiet 1"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            380,
            356,
            98,
            22
          ],
          "text": "speedlim 90"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            480,
            356,
            110,
            22
          ],
          "text": "split 25. 2300."
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            595,
            356,
            75,
            22
          ],
          "text": "t f f b"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            700,
            356,
            58,
            22
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            780,
            325,
            65,
            22
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            800,
            356,
            85,
            22
          ],
          "text": "delay 900"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            950,
            357,
            105,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            700,
            410,
            375,
            22
          ],
          "text": "expr 69. + 12. * log($f1 / $f2) / log(2.)"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            700,
            450,
            60,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            800,
            470,
            160,
            22
          ],
          "text": "expr int($f1 + 0.5)"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            970,
            470,
            95,
            22
          ],
          "text": "clip 0 127"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1075,
            470,
            50,
            22
          ],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1140,
            470,
            108,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            800,
            520,
            350,
            22
          ],
          "text": "expr 100. * ($f1 - int($f1 + 0.5))"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1160,
            520,
            110,
            22
          ],
          "text": "clip -50. 50."
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1280,
            520,
            115,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            890,
            392,
            125,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1020,
            393,
            101,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1140,
            393,
            101,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1260,
            393,
            88,
            22
          ],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            290,
            558,
            114,
            22
          ],
          "text": "peakamp~ 100"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            420,
            559,
            110,
            22
          ],
          "text": "speedlim 130"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            542,
            559,
            295,
            22
          ],
          "text": "expr min(100.,max(0.,$f1*100.))"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            844,
            559,
            110,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            350,
            620,
            72,
            22
          ],
          "text": "f 69."
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            195,
            621,
            55,
            22
          ],
          "text": "t b f"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            470,
            622,
            320,
            22
          ],
          "text": "expr $f2 * pow(2., ($f1 - 69.) / 12.)"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            820,
            619,
            82,
            22
          ],
          "text": "cycle~"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            820,
            656,
            75,
            22
          ],
          "text": "saw~"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            945,
            621,
            120,
            22
          ],
          "text": "selector~ 2"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            820,
            706,
            65,
            22
          ],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1079,
            622,
            100,
            22
          ],
          "text": "pack 0. 25"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1190,
            622,
            65,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1079,
            662,
            100,
            22
          ],
          "text": "pack 0. 25"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1190,
            662,
            66,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1275,
            621,
            42,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1330,
            621,
            42,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            770,
            730,
            110,
            22
          ],
          "text": "pack 0. 15"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            890,
            731,
            65,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            990,
            740,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            990,
            780,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1080,
            745,
            44,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1080,
            785,
            44,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            1180,
            769,
            94,
            22
          ],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            40,
            850,
            89,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            142,
            850,
            90,
            22
          ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            243,
            850,
            95,
            22
          ],
          "text": "delay 250"
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 6,
          "patching_rect": [
            350,
            849,
            170,
            22
          ],
          "text": "t b b b b b b"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            40,
            906,
            91,
            22
          ],
          "text": "live.banks"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            142,
            910,
            750,
            18
          ],
          "text": "Audio is always routed through. Fzero pitch detection works on summed, high-passed input.",
          "textcolor": [
            0.75,
            0.8,
            0.88,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            142,
            932,
            750,
            18
          ],
          "text": "Original Pitch Pipe interface, OS keyboard hook and narration are not used.",
          "textcolor": [
            0.75,
            0.8,
            0.88,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            300,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            395,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            490,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            585,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            680,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            775,
            940,
            85,
            22
          ],
          "text": "outputvalue"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            40,
            960,
            700,
            20
          ],
          "text": "Read existing Live parameter values on load. Never bang live.text toggles."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-15",
            0
          ],
          "destination": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-15",
            1
          ],
          "destination": [
            "obj-16",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-16",
            0
          ],
          "destination": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            0
          ],
          "destination": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            0
          ],
          "destination": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-19",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-20",
            0
          ],
          "destination": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-21",
            0
          ],
          "destination": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            2
          ],
          "destination": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-23",
            1
          ],
          "destination": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-23",
            0
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            1
          ],
          "destination": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-27",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-27",
            0
          ],
          "destination": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-28",
            0
          ],
          "destination": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-29",
            0
          ],
          "destination": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-30",
            0
          ],
          "destination": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-31",
            0
          ],
          "destination": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-32",
            0
          ],
          "destination": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-28",
            1
          ],
          "destination": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-33",
            0
          ],
          "destination": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-34",
            0
          ],
          "destination": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-35",
            0
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-25",
            0
          ],
          "destination": [
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-36",
            0
          ],
          "destination": [
            "obj-37",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-37",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-36",
            0
          ],
          "destination": [
            "obj-38",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-38",
            0
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-25",
            0
          ],
          "destination": [
            "obj-39",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-39",
            0
          ],
          "destination": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            0
          ],
          "destination": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-40",
            0
          ],
          "destination": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-41",
            0
          ],
          "destination": [
            "obj-42",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            0
          ],
          "destination": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-43",
            0
          ],
          "destination": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-11",
            0
          ],
          "destination": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-44",
            0
          ],
          "destination": [
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-45",
            1
          ],
          "destination": [
            "obj-46",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-45",
            0
          ],
          "destination": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-46",
            0
          ],
          "destination": [
            "obj-47",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-46",
            0
          ],
          "destination": [
            "obj-48",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-47",
            0
          ],
          "destination": [
            "obj-49",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-48",
            0
          ],
          "destination": [
            "obj-49",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-13",
            0
          ],
          "destination": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-50",
            0
          ],
          "destination": [
            "obj-49",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-51",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-51",
            0
          ],
          "destination": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            0
          ],
          "destination": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-53",
            0
          ],
          "destination": [
            "obj-54",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-49",
            0
          ],
          "destination": [
            "obj-55",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-52",
            0
          ],
          "destination": [
            "obj-55",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-55",
            0
          ],
          "destination": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-54",
            0
          ],
          "destination": [
            "obj-56",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-57",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-57",
            0
          ],
          "destination": [
            "obj-58",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-15",
            0
          ],
          "destination": [
            "obj-59",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-15",
            1
          ],
          "destination": [
            "obj-60",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-58",
            0
          ],
          "destination": [
            "obj-59",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-58",
            0
          ],
          "destination": [
            "obj-60",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-59",
            0
          ],
          "destination": [
            "obj-61",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-60",
            0
          ],
          "destination": [
            "obj-62",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-56",
            0
          ],
          "destination": [
            "obj-61",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-56",
            0
          ],
          "destination": [
            "obj-62",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-61",
            0
          ],
          "destination": [
            "obj-63",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            0
          ],
          "destination": [
            "obj-63",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-64",
            0
          ],
          "destination": [
            "obj-65",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-65",
            0
          ],
          "destination": [
            "obj-66",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-66",
            0
          ],
          "destination": [
            "obj-67",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            0
          ],
          "destination": [
            "obj-71",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            1
          ],
          "destination": [
            "obj-72",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            2
          ],
          "destination": [
            "obj-73",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            3
          ],
          "destination": [
            "obj-74",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            4
          ],
          "destination": [
            "obj-75",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            5
          ],
          "destination": [
            "obj-76",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-71",
            0
          ],
          "destination": [
            "obj-9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-72",
            0
          ],
          "destination": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-73",
            0
          ],
          "destination": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-74",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-75",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-76",
            0
          ],
          "destination": [
            "obj-14",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-5": [
        "Detected Note",
        "Note",
        0
      ],
      "obj-6": [
        "Detune Cents",
        "Cents",
        0
      ],
      "obj-7": [
        "Detected Hz",
        "Hz",
        0
      ],
      "obj-8": [
        "Input Level",
        "Input",
        0
      ],
      "obj-9": [
        "A4 Reference",
        "A4 Hz",
        0
      ],
      "obj-10": [
        "Tone Enable",
        "Tone",
        0
      ],
      "obj-11": [
        "Tone Note",
        "Pitch",
        0
      ],
      "obj-12": [
        "Tone Level",
        "Level",
        0
      ],
      "obj-13": [
        "Waveform",
        "Wave",
        0
      ],
      "obj-14": [
        "Audio Thru",
        "Thru",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "Tuner / Tone",
          "parameters": [
            "Detected Note",
            "Detune Cents",
            "Detected Hz",
            "A4 Reference",
            "Tone Enable",
            "Tone Note",
            "Tone Level",
            "Waveform"
          ]
        },
        "1": {
          "index": 1,
          "name": "Input",
          "parameters": [
            "Input Level",
            "Audio Thru",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [],
    "latency": 0,
    "is_mpe": 0,
    "external_mpe_tuning_enabled": 0,
    "minimum_live_version": "",
    "minimum_max_version": "",
    "platform_compatibility": 0
  }
}

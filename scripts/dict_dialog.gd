extends Node

var tutorial_scene = 0
var id = 4
var key = "first"


var tutorial =  [
    {
      "text": "Oh... I didn't imagine that you were so week.\nTake this, it will help.",
      "links": [
        {
          "name": "TAKE ",
          "link": "take",
          "pid": "2"
        }
      ],
      "name": "Wh-what happend? I...I couldn't move",
      "pid": "1",
      "position": {
        "x": "411",
        "y": "351"
      }
    },
    {
      "text": "Now you can move. Try to survive this time.\nYou just have to run\nIt's like in a game, W A S D, you know?",
      "links": [
        {
          "name": "...",
          "link": "...",
          "pid": "3"
        }
      ],
      "name": "take",
      "pid": "2",
      "position": {
        "x": "532",
        "y": "501"
      }
    },
    {
      "text": "What I'm talking about?\nYou don't even remeber about yourself...",
      "links": [
        {
          "name": "UPGRADE",
          "link": "UPGRADE",
          "pid": "4"
        }
      ],
      "name": "...",
      "pid": "3",
      "position": {
        "x": "532",
        "y": "651"
      }
    },
    {
      "text": "[[Tutorial 2]]",
      "links": [
        {
          "name": "Tutorial 2",
          "link": "Tutorial 2",
          "pid": "6"
        }
      ],
      "name": "UPGRADE",
      "pid": "4",
      "position": {
        "x": "532",
        "y": "801"
      }
    },
    {
      "text": "Oh, you already died?",
      "links": [
        {
          "name": "Wh-what happend? I...I couldn't move",
          "link": "Wh-what happend? I...I couldn't move",
          "pid": "1"
        }
      ],
      "name": "Start",
      "pid": "5",
      "position": {
        "x": "463",
        "y": "242"
      }
    },
    {
      "text": "Oh no, here we are again.",
      "links": [
        {
          "name": "But... There was no place to run...",
          "link": "But... There was no place to run...",
          "pid": "7"
        }
      ],
      "name": "Tutorial 2",
      "pid": "6",
      "position": {
        "x": "652",
        "y": "946"
      }
    },
    {
      "text": "In some cases, you can't run. You HAVE to fight!",
      "links": [
        {
          "name": "But how can I do this?",
          "link": "But how can I do this?",
          "pid": "8"
        },
        {
          "name": "I don't want to hurt anyone!",
          "link": "I don't want to hurt anyone!",
          "pid": "9"
        }
      ],
      "name": "But... There was no place to run...",
      "pid": "7",
      "position": {
        "x": "652",
        "y": "1101"
      }
    },
    {
      "text": "Here, It's dangerous to go alone, take this:",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        }
      ],
      "name": "But, how can I do this?",
      "pid": "8",
      "position": {
        "x": "809",
        "y": "1267"
      }
    },
    {
      "text": "Life is not a pacifist game where you can choose this.\nYou HAVE to hurt someone to stay alive.",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE",
          "link": "DON'T TAKE",
          "pid": "11"
        }
      ],
      "name": "I don't want to hurt anyone!",
      "pid": "9",
      "position": {
        "x": "535",
        "y": "1263"
      }
    },
    {
      "text": "Ok, a gun is self explanatory.\nYou just have to CLICK and shoot. It's really intuitive.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "T3",
          "pid": "24"
        }
      ],
      "name": "TAKE",
      "pid": "10",
      "position": {
        "x": "1196",
        "y": "1522"
      }
    },
    {
      "text": "They are just BUGS, please, take this already.",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d2",
          "pid": "12"
        }
      ],
      "name": "DON'T TAKE",
      "pid": "11",
      "position": {
        "x": "375",
        "y": "1424"
      }
    },
    {
      "text": "You are pissing me off.\nJust take it and go!",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d3",
          "pid": "13"
        }
      ],
      "name": " d2",
      "pid": "12",
      "position": {
        "x": "279",
        "y": "1575"
      }
    },
    {
      "text": "You are leaving me with no choices...",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": "another_voice",
          "pid": "14"
        }
      ],
      "name": " d3",
      "pid": "13",
      "position": {
        "x": "166",
        "y": "1779"
      }
    },
    {
      "text": "0x 44 6f 6e 27 74 20 62 65 6c 69 65 76 65 20 69 6e 20 68 69 73 20 6c 69 65 73 ",
      "links": [
        {
          "name": "Uh??",
          "link": "Uh??",
          "pid": "15"
        }
      ],
      "name": "another_voice",
      "pid": "14",
      "position": {
        "x": "178",
        "y": "1954"
      }
    },
    {
      "text": "Okay, okay, this is my last advice!",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "What was that?",
          "link": "What was that?",
          "pid": "16"
        }
      ],
      "name": "Uh??",
      "pid": "15",
      "position": {
        "x": "301",
        "y": "2133"
      }
    },
    {
      "text": "That what?",
      "links": [
        {
          "name": "The different voice that spoked",
          "link": "The different voice that spoked",
          "pid": "17"
        }
      ],
      "name": "What was that?",
      "pid": "16",
      "position": {
        "x": "430",
        "y": "2294"
      }
    },
    {
      "text": "Oh.. it must be some memory coming back to you!",
      "links": [
        {
          "name": "Y-yeah, it must be",
          "link": "Y-yeah, it must be",
          "pid": "18"
        }
      ],
      "name": "The different voice that spoke",
      "pid": "17",
      "position": {
        "x": "431",
        "y": "2423"
      }
    },
    {
      "text": "But for now, I have to tell you something",
      "links": [
        {
          "name": "What?",
          "link": "What?",
          "pid": "19"
        }
      ],
      "name": "Y-yeah, it must be",
      "pid": "18",
      "position": {
        "x": "448",
        "y": "2563"
      }
    },
    {
      "text": "Even if you don't remember, people that I care about... people that YOU care about are in danger, and you can only help them by getting out of this lab.",
      "links": [
        {
          "name": "But...",
          "link": "But...",
          "pid": "20"
        }
      ],
      "name": "What?",
      "pid": "19",
      "position": {
        "x": "451",
        "y": "2694"
      }
    },
    {
      "text": "And the only way to do that, is by taking that gun and killing every single bug that is currupting this world.\nSo, please .. take the gun.",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d5",
          "pid": "21"
        }
      ],
      "name": "But...",
      "pid": "20",
      "position": {
        "x": "652",
        "y": "2771"
      }
    },
    {
      "text": "Okay, that is your position, but I will be here until you take this",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d6",
          "pid": "22"
        }
      ],
      "name": " d5",
      "pid": "21",
      "position": {
        "x": "844",
        "y": "2879"
      }
    },
    {
      "text": "...",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d6",
          "pid": "22"
        }
      ],
      "name": " d6",
      "pid": "22",
      "position": {
        "x": "1227",
        "y": "2707"
      }
    },
    {
      "text": "Thank you.",
      "links": [
        {
          "name": "What I have to do now? ",
          "link": "TAKE",
          "pid": "10"
        }
      ],
      "name": " t2",
      "pid": "23",
      "position": {
        "x": "1119",
        "y": "2272"
      }
    },
    {
      "text": "[[Turorial3]]",
      "links": [
        {
          "name": "Turorial3",
          "link": "Turorial3",
          "pid": "25"
        }
      ],
      "name": "T3",
      "pid": "24",
      "position": {
        "x": "1293",
        "y": "1730"
      }
    },
    {
      "text": "That was scary...",
      "links": [
        {
          "name": "What was that? ",
          "link": " wwt2",
          "pid": "26"
        }
      ],
      "name": "Turorial3",
      "pid": "25",
      "position": {
        "x": "1496",
        "y": "1897"
      }
    },
    {
      "text": "It must be part of the infection of the bugs.\nThe world is full of that thing, please don't touch that.",
      "links": [
        {
          "name": "But it was faster than me.",
          "link": "But it was faster than me.",
          "pid": "27"
        }
      ],
      "name": " wwt2",
      "pid": "26",
      "position": {
        "x": "1633",
        "y": "2040"
      }
    },
    {
      "text": "In that case, you just have to run faster, right?",
      "links": [
        {
          "name": "But how can I do that?",
          "link": "But how can I do that?",
          "pid": "28"
        }
      ],
      "name": "But it was faster than me.",
      "pid": "27",
      "position": {
        "x": "1740",
        "y": "2173"
      }
    },
    {
      "text": "How would I know?",
      "links": [
        {
          "name": "... ",
          "link": " ....",
          "pid": "29"
        }
      ],
      "name": "But how can I do that?",
      "pid": "28",
      "position": {
        "x": "1852",
        "y": "2298"
      }
    },
    {
      "text": "Okay, Okay, have you ever saw any SPACE scy fi fiction?",
      "links": [
        {
          "name": "SPACE... what?",
          "link": "space... what?",
          "pid": "30"
        }
      ],
      "name": " ....",
      "pid": "29",
      "position": {
        "x": "1972",
        "y": "2442"
      }
    },
    {
      "text": "... How could I explain...",
      "links": [
        {
          "name": "Okay... I think I know what is that...",
          "link": "Okay... I think I know what is that...",
          "pid": "31"
        }
      ],
      "name": "space... what?",
      "pid": "30",
      "position": {
        "x": "2084",
        "y": "2575"
      }
    },
    {
      "text": "Well, when they have to go faster, they took some SPACE and dash.",
      "links": [
        {
          "name": "And how does it help me?",
          "link": "And how it helps me?",
          "pid": "32"
        }
      ],
      "name": "Okay... I think I know what that means...",
      "pid": "31",
      "position": {
        "x": "2202",
        "y": "2695"
      }
    },
    {
      "text": "I don't know, find out yourself.",
      "links": [
        {
          "name": "UPGRADE",
          "link": " Tutorial 4",
          "pid": "33"
        }
      ],
      "name": "And how it helps me?",
      "pid": "32",
      "position": {
        "x": "2312",
        "y": "2844"
      }
    },
    {
      "text": "[[Tutorial4]]",
      "links": [
        {
          "name": "Tutorial4",
          "link": "Tutorial4",
          "pid": "34"
        }
      ],
      "name": " Tutorial 4",
      "pid": "33",
      "position": {
        "x": "2404",
        "y": "2961"
      }
    },
    {
      "text": "Are you there?",
      "links": [
        {
          "name": "Yeah, but I couldn't see anything",
          "link": "Yeah, but I couldn't see anything",
          "pid": "39"
        }
      ],
      "name": "Tutorial4",
      "pid": "34",
      "position": {
        "x": "2536",
        "y": "2837"
      }
    },
    {
      "text": "My light is like your gun, to use it, you just have do CLICK.",
      "links": [
        {
          "name": "What? ",
          "link": "What? ",
          "pid": "42"
        }
      ],
      "name": "Neeko...?",
      "pid": "35",
      "position": {
        "x": "3026",
        "y": "2415"
      }
    },
    {
      "text": "What do you mean?",
      "links": [
        {
          "name": "It's like if I heard Neeko's voice",
          "link": "It's like if I heard Neeko's voice",
          "pid": "41"
        },
        {
          "name": "Oh, just forget",
          "link": "Oh, just forget",
          "pid": "44"
        }
      ],
      "name": "But where is...? Doctor? What is going on??",
      "pid": "36",
      "position": {
        "x": "3552",
        "y": "1928"
      }
    },
    {
      "text": "It's a shame, I hoped this would be useful.\nAnyway, go there and KILL some bugs.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Nothing...",
      "pid": "37",
      "position": {
        "x": "4334",
        "y": "1978"
      }
    },
    {
      "text": "I see... I don't know what it means, but thank you for telling me that.\nYou are trustworthy.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Something about the darkness",
      "pid": "38",
      "position": {
        "x": "4113",
        "y": "1677"
      }
    },
    {
      "text": "Me neither, you should, I don't know, shoot everywhere and try to dash as fast as you can.",
      "links": [
        {
          "name": "You're right, I should have tried that ",
          "link": "neeko",
          "pid": "40"
        },
        {
          "name": "I don't know if it works... ",
          "link": "neeko",
          "pid": "40"
        }
      ],
      "name": "Yeah, but I couldn't see anything",
      "pid": "39",
      "position": {
        "x": "2685",
        "y": "2674"
      }
    },
    {
      "text": "Don't let the darkness grow whitin you.\nAccept my light.",
      "links": [
        {
          "name": "Neeko...?",
          "link": "Neeko...?",
          "pid": "35"
        }
      ],
      "name": "neeko",
      "pid": "40",
      "position": {
        "x": "2860",
        "y": "2536"
      }
    },
    {
      "text": "It must be another lapse of memory!\nWhat did you hear?",
      "links": [
        {
          "name": "Nothing...",
          "link": "Nothing...",
          "pid": "37"
        },
        {
          "name": "Something about the darkness",
          "link": "Something about the darkness",
          "pid": "38"
        }
      ],
      "name": "It's like I've heard Neeko's voice",
      "pid": "41",
      "position": {
        "x": "3904",
        "y": "1985"
      }
    },
    {
      "text": "But instead of killing the others, you bring light upon the world.\nThat is the RIGHT CLICK.",
      "links": [
        {
          "name": "Okay, I will try, but I have some questions for you",
          "link": "Okay, I will try, but I have some questions for you",
          "pid": "43"
        }
      ],
      "name": "What? ",
      "pid": "42",
      "position": {
        "x": "3196",
        "y": "2265"
      }
    },
    {
      "text": "What are you waiting for? Go ahead and kill some bugs.",
      "links": [
        {
          "name": "But where is...? Professor? What is going on??",
          "link": "But where is...? Doctor? What is going on??",
          "pid": "36"
        }
      ],
      "name": "Okay, I will try, but I have some questions for you",
      "pid": "43",
      "position": {
        "x": "3346",
        "y": "2136"
      }
    },
    {
      "text": "You are weird...\nDon't waste my time, go there and kill those creatures already!",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Oh, just forget",
      "pid": "44",
      "position": {
        "x": "3664",
        "y": "1552"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END",
      "pid": "45",
      "position": {
        "x": "4489",
        "y": "1639"
      }
    }
  ]

func _ready():
	tutorial_scene = 0
	id = 4
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

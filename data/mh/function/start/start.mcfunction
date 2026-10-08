scoreboard objectives add start dummy [\
    {\
        "text":"开始游戏-",\
        color:"gray",\
    },\
    {\
        "text":"准备中...",\
        bold:true,\
        color:"red"\
    }\
]

scoreboard players set @a start 0

scoreboard objectives setdisplay sidebar start

scoreboard objectives add shift_test minecraft.custom:sneak_time
scoreboard objectives add last_shift_test dummy

schedule function mh:shift/trigger 1t replace
schedule function mh:nether/trigger 1t replace
schedule function mh:shift 1t replace

tellraw @a [\
    {\
        text:"是否开始游戏？",\
        bold:true,\
        color:"gold",\
    },\
    {\
        "text":"（点击确定）",\
        bold:false,\
        color:"aqua",\
        click_event:{\
            action:"run_command",\
            "command":"/scoreboard players set @s start 1"\
        },\
        "hover_event": {\
            "action":"show_text",\
            "value":"点击确定"\
        }\
    }\
]

function mh:start/check
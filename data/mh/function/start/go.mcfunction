scoreboard objectives remove start
execute as @r run tag @s add chosen
execute as @a[tag=chosen] at @s run tp @a ~ ~1 ~
title @a title [\
    {\
        "text":"5s后游戏开始",\
        "color":"green"\
    }\
]

function mh:start/temp
function mh:nether/trigger
schedule function mh:start/timer 5s
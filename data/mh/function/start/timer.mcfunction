execute if entity @a[tag=chosen,scores={temp=0}] as @a at @s run \
    execute as @a[tag=hunter] run function mh:start/effect
execute if entity @a[tag=chosen,scores={temp=0}] as @a at @s run \
    title @a title [{"text":"游戏开始！",bold:true,color:"red"}]
execute if entity @a[tag=chosen,scores={temp=0}] as @a at @s run \
    playsound minecraft:entity.ender_dragon.ambient

execute if entity @a[tag=chosen,scores={temp=26}] as @a at @s run \
    title @a[tag=hunter] title [{"text":"4..",bold:true,color:"green"}]
execute if entity @a[tag=chosen,scores={temp=26}] as @a at @s run \
    playsound minecraft:ui.button.click ambient @s ~ ~ ~ 2 0

execute if entity @a[tag=chosen,scores={temp=27}] as @a at @s run \
    title @a[tag=hunter] title [{"text":"3..",bold:true,color:"yellow"}]
execute if entity @a[tag=chosen,scores={temp=27}] as @a at @s run \
    playsound minecraft:ui.button.click ambient @s ~ ~ ~ 2 0

execute if entity @a[tag=chosen,scores={temp=28}] as @a at @s run \
    title @a[tag=hunter] title [{"text":"2..",bold:true,color:"gold"}]
execute if entity @a[tag=chosen,scores={temp=28}] as @a at @s run \
    playsound minecraft:ui.button.click ambient @s ~ ~ ~ 2 0

execute if entity @a[tag=chosen,scores={temp=29}] as @a at @s run \
    title @a[tag=hunter] title [{"text":"1..",bold:true,color:"red"}]
execute if entity @a[tag=chosen,scores={temp=29}] as @a at @s run \
    playsound minecraft:ui.button.click ambient @s ~ ~ ~ 2 0

execute if entity @a[tag=chosen,scores={temp=30}] as @a at @s run \
    title @a title [{"text":"猎人开始行动！",bold:true,color:"red"}]
execute if entity @a[tag=chosen,scores={temp=30}] as @a at @s run \
    playsound minecraft:ui.button.click ambient @s ~ ~ ~ 2 2
execute if entity @a[tag=chosen,scores={temp=30}] as @a at @s run \
    execute as @a run function mh:start/uneffect

scoreboard players add @a[tag=chosen] temp 1
execute unless entity @a[tag=chosen,scores={temp=31..}] run schedule function mh:start/timer 1s

execute if entity @a[tag=chosen,scores={temp=31..}] as @a at @s run \
    execute as @a run function mh:start/untemp
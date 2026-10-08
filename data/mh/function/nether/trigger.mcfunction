# 如果玩家在地狱门，同时在主世界，世界上没有盔甲架：生成
execute as @a[tag=runner,nbt={"Dimension":"minecraft:overworld"}] at @s \
    unless entity @e[tag=np_point] \
        if block ~ ~ ~ nether_portal \
            run function mh:nether/player
# 如果玩家在主世界，但是所处dist ..1内没有盔甲架，同时世界上有盔甲架：干掉盔甲架
execute as @a[tag=runner,nbt={"Dimension":"minecraft:overworld"}] at @s \
    if entity @e[tag=np_point] \
        unless entity @e[tag=np_point,distance=..1] \
            run kill @e[tag=np_point]
# 调用自己
schedule function mh:nether/trigger 1t append
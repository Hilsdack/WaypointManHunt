# 如果玩家在shift，同时世界上没有盔甲架：生成
execute as @a[tag=runner,scores={shift_test=1..}] at @s \
    unless entity @e[tag=np_point_shift] \
            run function mh:shift/player
# 如果玩家所处dist ..1内没有盔甲架，同时世界上有盔甲架：干掉盔甲架
execute as @a[tag=runner] at @s \
    if entity @e[tag=np_point_shift] \
        unless entity @e[tag=np_point_shift,distance=..1] \
            run kill @e[tag=np_point_shift]
# 调用自己
schedule function mh:shift/trigger 1t append
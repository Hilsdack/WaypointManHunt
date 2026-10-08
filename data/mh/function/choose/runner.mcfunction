# 重置标签
tag @s remove runner
tag @s remove hunter

# 添加标签
tag @s add runner
# 设置“接受范围”和“传输范围”
attribute @s waypoint_receive_range base set 0
attribute @s waypoint_transmit_range base set 1000000009
# 设置颜色
waypoint modify @s color red
# 设置样式
waypoint modify @s style set none
# 加入队伍
team join Runner @s
# 检测是否shift相等且不为1。
    # 是：shift_test清零
execute as @a if score @s shift_test matches 1.. \
    if score @s shift_test = @s last_shift_test run \
        scoreboard players set @s shift_test 0
# 给last_shift_test赋值
execute as @a at @s store result score @s last_shift_test run scoreboard players get @s shift_test

schedule function mh:shift 1t
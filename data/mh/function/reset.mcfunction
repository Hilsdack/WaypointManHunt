dialog show @a mh:choose
function mh:start/start
gamerule send_command_feedback false
scoreboard objectives add shift_test minecraft.custom:sneak_time
scoreboard objectives add last_shift_test dummy
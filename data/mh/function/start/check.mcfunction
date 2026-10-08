execute unless entity @a[scores={start=0}] run function mh:start/go
execute if entity @e[scores={start=0}] run schedule function mh:start/check 1t
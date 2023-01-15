tag @s remove stable

execute if block ^-0.5 ^-2 ^ minecraft:bedrock if block ^-1.5 ^-2 ^ minecraft:bedrock if block ^0.5 ^-2 ^ minecraft:bedrock if block ^1.5 ^-2 ^ minecraft:bedrock if block ^1.5 ^-1 ^ minecraft:bedrock if block ^-1.5 ^-1 ^ minecraft:bedrock if block ^1.5 ^ ^ minecraft:bedrock if block ^-1.5 ^ ^ minecraft:bedrock if block ^1.5 ^1 ^ minecraft:bedrock if block ^-1.5 ^1 ^ minecraft:bedrock if block ^1.5 ^2 ^ minecraft:bedrock if block ^-1.5 ^2 ^ minecraft:bedrock if block ^0.5 ^2 ^ minecraft:bedrock if block ^-0.5 ^2 ^ minecraft:bedrock run tag @s add stable
execute as @s[tag=!stable] at @s run function opdirt:portal2/destroy

execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra1,distance=0..2] run summon armor_stand ^0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p2_extra1","p2_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra2,distance=0..2] run summon armor_stand ^-0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p2_extra2","p2_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra3,distance=0..2] run summon armor_stand ^0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p2_extra3","p2_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra4,distance=0..2] run summon armor_stand ^-0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p2_extra4","p2_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra5,distance=0..2] run summon armor_stand ^0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p2_extra5","p2_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p2_extra6,distance=0..2] run summon armor_stand ^-0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1,Tags:["p2_extra6","p2_extra"]}

# Overworld to Custom
execute as @e[type=#opdirt:p1_can_tp,tag=!p2_teleported] at @s if predicate opdirt:in_no_ores_overworld if entity @e[tag=p2_extra,distance=..0.8] at @e[tag=portal2,distance=0..2] rotated as @e[tag=portal2,distance=0..2] in overworld run function opdirt:portal2/teleport
# Custom to Overworld
execute as @e[type=#opdirt:p1_can_tp,tag=!p2_teleported] at @s if predicate opdirt:in_overworld if entity @e[tag=p2_extra,distance=..0.8] at @e[tag=portal2,distance=0..2] rotated as @e[tag=portal2,distance=0..2] in no_ores_overworld run function opdirt:portal2/teleport

execute unless entity @e[tag=!p2_extra,tag=!portal2,type=#opdirt:p1_can_tp,distance=0..3] if entity @e[tag=p2_extra,distance=0..2] run kill @e[tag=p2_extra,distance=0..2]

execute as @e[type=#opdirt:p1_can_tp] at @s unless entity @e[tag=p2_extra,distance=..0.8] if entity @e[tag=p2_extra,distance=0.8..] run tag @s remove p2_teleported
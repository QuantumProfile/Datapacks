# AS AT ALL PORTAL1 ARMORSTANDS
tag @s remove stable

# Ensure stability
execute if block ^-0.5 ^-2 ^ minecraft:iron_block if block ^-1.5 ^-2 ^ minecraft:iron_block if block ^0.5 ^-2 ^ minecraft:iron_block if block ^1.5 ^-2 ^ minecraft:iron_block if block ^1.5 ^-1 ^ minecraft:iron_block if block ^-1.5 ^-1 ^ minecraft:iron_block if block ^1.5 ^ ^ minecraft:iron_block if block ^-1.5 ^ ^ minecraft:iron_block if block ^1.5 ^1 ^ minecraft:iron_block if block ^-1.5 ^1 ^ minecraft:iron_block if block ^1.5 ^2 ^ minecraft:iron_block if block ^-1.5 ^2 ^ minecraft:iron_block if block ^0.5 ^2 ^ minecraft:iron_block if block ^-0.5 ^2 ^ minecraft:iron_block run tag @s add stable
execute as @s[tag=!stable] at @s run function opdirt:portal1/destroy

# If teleportable nearby, use better detection
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra1,distance=0..2] run summon armor_stand ^0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p1_extra1","p1_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra2,distance=0..2] run summon armor_stand ^-0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p1_extra2","p1_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra3,distance=0..2] run summon armor_stand ^0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p1_extra3","p1_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra4,distance=0..2] run summon armor_stand ^-0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p1_extra4","p1_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra5,distance=0..2] run summon armor_stand ^0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["p1_extra5","p1_extra"]}
execute as @s[tag=!dead] if entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] unless entity @e[tag=p1_extra6,distance=0..2] run summon armor_stand ^-0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1,Tags:["p1_extra6","p1_extra"]}

#### Teleport ####
# Overworld to Custom
execute as @e[type=#opdirt:p1_can_tp,tag=!p1_teleported] at @s if predicate opdirt:in_dirt_dimension if entity @e[tag=p1_extra,distance=..0.8] at @e[tag=portal1,distance=0..2] rotated as @e[tag=portal1,distance=0..2] in no_ores_overworld run function opdirt:portal1/teleport
# Custom to Overworld
execute as @e[type=#opdirt:p1_can_tp,tag=!p1_teleported] at @s if predicate opdirt:in_no_ores_overworld if entity @e[tag=p1_extra,distance=..0.8] at @e[tag=portal1,distance=0..2] rotated as @e[tag=portal1,distance=0..2] in minecraft:dirt_dimension run function opdirt:portal1/teleport

# Kill extras if nothing nearby
execute unless entity @e[tag=!p1_extra,tag=!portal1,type=#opdirt:p1_can_tp,distance=0..3] if entity @e[tag=p1_extra,distance=0..2] run kill @e[tag=p1_extra,distance=0..2]

# Remove teleported tag if left portal
execute as @e[type=#opdirt:p1_can_tp] at @s unless entity @e[tag=p1_extra,distance=..0.8] if entity @e[tag=p1_extra,distance=0.8..] run tag @s remove p1_teleported
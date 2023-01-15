execute unless entity @e[tag=portal2_align,type=minecraft:item_frame,distance=0..1] run summon item_frame ~ ~ ~ {Tags:["portal2_align"],Facing:1,Invisible:1}

execute if block ~ ~-1 ~1 minecraft:bedrock if block ~ ~-1 ~2 minecraft:bedrock if block ~ ~-1 ~-1 minecraft:bedrock if block ~ ~ ~-1 minecraft:bedrock if block ~ ~ ~2 minecraft:bedrock if block ~ ~1 ~-1 minecraft:bedrock if block ~ ~1 ~2 minecraft:bedrock if block ~ ~2 ~-1 minecraft:bedrock if block ~ ~2 ~2 minecraft:bedrock if block ~ ~3 ~-1 minecraft:bedrock if block ~ ~3 ~2 minecraft:bedrock if block ~ ~3 ~ minecraft:bedrock if block ~ ~3 ~1 minecraft:bedrock at @e[type=minecraft:item_frame,distance=0..1,tag=portal2_align] positioned ~ ~1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_brick",Count:1b,tag:{CustomModelData:919190}}],Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["portal2_z","portal2","cloud_active"]}

execute if block ~ ~-1 ~1 minecraft:bedrock if block ~ ~-1 ~2 minecraft:bedrock if block ~ ~-1 ~-1 minecraft:bedrock if block ~ ~ ~-1 minecraft:bedrock if block ~ ~ ~2 minecraft:bedrock if block ~ ~1 ~-1 minecraft:bedrock if block ~ ~1 ~2 minecraft:bedrock if block ~ ~2 ~-1 minecraft:bedrock if block ~ ~2 ~2 minecraft:bedrock if block ~ ~3 ~-1 minecraft:bedrock if block ~ ~3 ~2 minecraft:bedrock if block ~ ~3 ~ minecraft:bedrock if block ~ ~3 ~1 minecraft:bedrock at @e[type=minecraft:item_frame,distance=0..1,tag=portal2_align] positioned ~ ~1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_brick",Count:1b,tag:{CustomModelData:919190}}],Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["portal2_z","portal2","cloud_active"]}

execute if block ~ ~-1 ~1 minecraft:bedrock if block ~ ~-1 ~2 minecraft:bedrock if block ~ ~-1 ~-1 minecraft:bedrock if block ~ ~ ~-1 minecraft:bedrock if block ~ ~ ~2 minecraft:bedrock if block ~ ~1 ~-1 minecraft:bedrock if block ~ ~1 ~2 minecraft:bedrock if block ~ ~2 ~-1 minecraft:bedrock if block ~ ~2 ~2 minecraft:bedrock if block ~ ~3 ~-1 minecraft:bedrock if block ~ ~3 ~2 minecraft:bedrock if block ~ ~3 ~ minecraft:bedrock if block ~ ~3 ~1 minecraft:bedrock at @e[type=minecraft:item_frame,distance=0..1,tag=portal2_align] positioned ~ ~1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_brick",Count:1b,tag:{CustomModelData:919190}}],Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["portal2_z","portal2","cloud_active"]}

execute if block ~ ~-1 ~1 minecraft:bedrock if block ~ ~-1 ~2 minecraft:bedrock if block ~ ~-1 ~-1 minecraft:bedrock if block ~ ~ ~-1 minecraft:bedrock if block ~ ~ ~2 minecraft:bedrock if block ~ ~1 ~-1 minecraft:bedrock if block ~ ~1 ~2 minecraft:bedrock if block ~ ~2 ~-1 minecraft:bedrock if block ~ ~2 ~2 minecraft:bedrock if block ~ ~3 ~-1 minecraft:bedrock if block ~ ~3 ~2 minecraft:bedrock if block ~ ~3 ~ minecraft:bedrock if block ~ ~3 ~1 minecraft:bedrock at @e[type=minecraft:item_frame,distance=0..1,tag=portal2_align] positioned ~ ~1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_brick",Count:1b,tag:{CustomModelData:919190}}],Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["portal2_z","portal2","cloud_active"]}

execute at @e[tag=cloud_active,distance=0..2] run playsound minecraft:block.beacon.activate block @a[distance=0..25] ~ ~ ~ 1 2 1
execute at @e[tag=cloud_active,distance=0..2] run playsound minecraft:entity.generic.splash block @a[distance=0..25] ~ ~ ~ 1 1 1
execute at @e[tag=cloud_active,distance=0..2] run playsound minecraft:block.glass.break block @a[distance=0..25] ~ ~ ~ 1 1 1
execute at @e[tag=cloud_active,distance=0..2] run particle minecraft:splash ~ ~ ~ 1 3 1 1 100

execute if entity @e[tag=cloud_active,distance=0..2] run setblock ~ ~ ~ air
kill @e[tag=portal2_align,distance=0..1]

execute if entity @e[tag=cloud_active,distance=0..2] run tag @s add p2_cancelled
execute if entity @e[tag=cloud_active,distance=0..2] run kill @s

execute as @e[tag=cloud_active,tag=portal2_x,distance=0..2] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=cloud_active,tag=portal2_z,distance=0..2] at @s run tp @s ~ ~ ~ 90 0
# Remove cloud active tag after it has been deactivated
execute if entity @e[tag=cloud_active,distance=0..2] run tag @e[tag=cloud_active,distance=0..2] remove cloud_active


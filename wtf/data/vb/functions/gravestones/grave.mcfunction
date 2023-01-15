execute as @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Marker:1b,Small:1,Tags:[gravestone.items]}
execute as @s run summon armor_stand ~-.18 ~-1.15 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone_wall",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Pose:{Head:[0f,180f,340f]},Rotation:[0f]}
execute as @s run summon armor_stand ~.6 ~-.6 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Small:1b,Rotation:[270f],Pose:{Head:[298f,0f,0f]},Tags:[gravestone.head]}
execute as @s run summon armor_stand ~ ~-1.7 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"coarse_dirt",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Rotation:[90f],Tags:[gravestone.ground]}
execute as @s run summon armor_stand ~.625 ~-1.7 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"coarse_dirt",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Rotation:[90f],Tags:[gravestone.ground]}

# Player head
loot replace entity @e[tag=gravestone.head,limit=1,sort=nearest] armor.head loot vb:head

# Dimension Specific
execute if predicate vb:gravestones/in_nether run loot replace entity @e[tag=gravestone.ground,limit=2,sort=nearest] armor.head loot vb:soul_sand
execute if predicate vb:gravestones/in_end run loot replace entity @e[tag=gravestone.ground,limit=2,sort=nearest] armor.head loot vb:sand

#cloud tp
execute as @a[tag=CanDoubleJump] at @s unless entity @e[type=area_effect_cloud,tag=doublejumpTimer,distance=..0.1] run tp @e[limit=1,distance=..10,sort=nearest,tag=doublejumpTimer,type=area_effect_cloud] @s
execute as @a[tag=CanDoubleJump] at @s unless entity @e[type=area_effect_cloud,tag=doublejumpPlacer,distance=..0.1] run tp @e[limit=1,distance=..10,sort=nearest,tag=doublejumpPlacer,type=area_effect_cloud] @s

#At player
execute as @a[tag=CanDoubleJump] at @s if entity @e[type=area_effect_cloud,tag=doublejumpPlacer,distance=..0.1] unless entity @e[type=area_effect_cloud,tag=doublejumpTimer,distance=..0.1] run function doblesalto:doublejump/placing

#cloud functions
execute as @e[type=area_effect_cloud,tag=doublejumpRemover] at @s unless entity @e[type=area_effect_cloud,tag=doublejumpTimer2,distance=..0.1] run setblock ~ ~-1 ~ air
summon minecraft:area_effect_cloud ^ ^ ^ {Duration:120,Tags:["p2_cloud"]}
execute as @e[type=minecraft:area_effect_cloud,tag=p2_cloud] run tp @s ^ ^ ^ ~ ~
scoreboard players reset @s portal_two
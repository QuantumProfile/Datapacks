execute unless entity @e[type=area_effect_cloud,tag=doublejumpTimer,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:2,Tags:["doublejumpTimer"]}

execute unless entity @e[type=area_effect_cloud,tag=doublejumpPlacer,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:3,Tags:["doublejumpPlacer"]}

scoreboard players reset @s doublejump
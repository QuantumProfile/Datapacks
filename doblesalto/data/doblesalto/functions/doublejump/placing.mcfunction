setblock ~ ~-1 ~ barrier

execute unless entity @e[type=area_effect_cloud,tag=doublejumpTimer2,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:9,Tags:["doublejumpTimer2"]}

execute unless entity @e[type=area_effect_cloud,tag=doublejumpRemover,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:11,Tags:["doublejumpRemover"]}
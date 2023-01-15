execute if predicate opdirt:in_dirt_dimension run execute in gold_nether run tp @s ~ ~ ~
execute if predicate opdirt:in_gold_nether run execute in no_ores_overworld run tp @s ~ ~ ~
execute if predicate opdirt:in_no_ores_overworld run execute in gold_nether run tp @s ~ ~ ~
execute in gold_nether run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute in gold_nether run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone
execute if predicate opdirt:in_gold_nether run execute in no_ores_overworld run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute if predicate opdirt:in_gold_nether run execute in no_ores_overworld run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone
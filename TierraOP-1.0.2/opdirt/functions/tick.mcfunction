# Custom crafter 1
execute as @e[tag=crafter1] at @s run function opdirt:crafter/crafter
execute as @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ crafting_table run function opdirt:crafter/spawnbasic

# Custom crafter 2
execute as @e[tag=crafter2] at @s run function opdirt:crafter/crafter2
execute as @e[type=item, nbt={Item:{id:"minecraft:netherite_block",tag:{display:{Name:'{"text":"Super Netherite Block","color":"#5C2501","bold":true,"italic":false}'}}, Count:1b}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ crafting_table run function opdirt:crafter/spawnadvanced

# Strong Heavy Armor effects
effect give @a[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",tag:{armor:1}}]}] minecraft:resistance 1 127 true

# Perfect Pickaxe effects
execute at @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",tag:{display:{Lore:['{"text":"It is indeed a perfect pickaxe"}']}}}}] run effect give @p minecraft:haste 1 127

# Super Bacon effects
execute at @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{display:{Lore:['{"text":"This item automatically feeds you up when held"}']}}}}] run effect give @p minecraft:saturation 1 2

# Speed Boots effects
effect give @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",tag:{speed:1}}]}] minecraft:speed 1 11 true
effect give @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",tag:{speed:1}}]}] minecraft:jump_boost 1 3 true

# Magma Pants effects
effect give @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{magma:1}}]}] minecraft:fire_resistance 1 127 true
#OP Wings effects
effect give @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{chorus:5}}]}] minecraft:resistance 1 127 true
# Crown effects
effect give @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{crown:1}}]}] minecraft:water_breathing 1 127 true
effect give @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{crown:1}}]}] minecraft:night_vision 1 0 true
# Flying Rod effects
effect give @a[nbt={SelectedItem:{id:"minecraft:end_rod",tag:{fly:1}}}] minecraft:levitation 1 3 true

#Golden Potion Teleport
execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{potion:1}}}] run tag @s add holdsWater1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{potion:1}}},nbt=!{SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @s remove holdsWater1
execute as @a[scores={WaterBottleUses=1..}, tag=holdsWater1] at @s run function opdirt:potion/potion
scoreboard players reset * WaterBottleUses

# mobs custom 
execute as @e[type=zombie,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_50 if predicate opdirt:in_dirt_dimension run function opdirt:mobs/transform/dirt_zombie
execute as @e[type=skeleton,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_50 if predicate opdirt:in_dirt_dimension run function opdirt:mobs/transform/dirt_skeleton
execute as @e[type=zombie,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_20 if predicate opdirt:in_no_ores_overworld run function opdirt:mobs/transform/iron_zombie
execute as @e[type=zombie,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_30 if predicate opdirt:in_no_ores_overworld run function opdirt:mobs/transform/stone_zombie
execute as @e[type=skeleton,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_20 if predicate opdirt:in_no_ores_overworld run function opdirt:mobs/transform/iron_skeleton
execute as @e[type=skeleton,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_30 if predicate opdirt:in_no_ores_overworld run function opdirt:mobs/transform/stone_skeleton
execute as @e[type=zombie,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_50 if predicate opdirt:in_emerald_forest run function opdirt:mobs/transform/emerald_zombie
execute as @e[type=skeleton,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_50 if predicate opdirt:in_emerald_forest run function opdirt:mobs/transform/emerald_skeleton
execute as @e[type=piglin,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_30 if predicate opdirt:in_gold_nether run function opdirt:mobs/transform/piglin2
execute as @e[type=piglin,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_20 if predicate opdirt:in_gold_nether run function opdirt:mobs/transform/piglin
execute as @e[type=piglin_brute,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_20 if predicate opdirt:in_gold_nether run function opdirt:mobs/transform/piglin_brute
execute as @e[type=zombified_piglin,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_30 if predicate opdirt:in_gold_nether run function opdirt:mobs/transform/zombified_piglin
execute as @e[type=ghast,tag=!custom_mob,tag=!tagged] at @s if predicate opdirt:random_chance_50 run function opdirt:mobs/transform/ghast

# tag mobs
execute as @e[type=zombie,tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged
execute as @e[type=skeleton,tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged
execute as @e[type=piglin, tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged
execute as @e[type=zombified_piglin, tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged
execute as @e[type=piglin_brute, tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged
execute as @e[type=ghast,tag=!custom_mob,tag=!tagged] at @s run tag @s add tagged

#portal stuff
execute as @a[scores={portal_one=1..}] at @s rotated as @s anchored eyes positioned ^ ^ ^ run function opdirt:portal1/cast
execute as @e[type=minecraft:area_effect_cloud,tag=p1_cloud] at @s run function opdirt:portal1/cloud
execute as @e[tag=portal1] at @s run function opdirt:portal1/portal1

execute as @a[scores={portal_two=1..}] at @s rotated as @s anchored eyes positioned ^ ^ ^ run function opdirt:portal2/cast
execute as @e[type=minecraft:area_effect_cloud,tag=p2_cloud] at @s run function opdirt:portal2/cloud
execute as @e[tag=portal2] at @s run function opdirt:portal2/portal2

tellraw @a {"text":"Bienvenido al datapack donde la tierra es GOOOOD","color":"#00FFB9","bold":true}
title @a title {"text":"Tierra OP", "bold":true, "italic":false, "color":"#00FFB9"}
execute as @a at @s if predicate opdirt:in_overworld run function opdirt:respawn
execute as @a at @s if predicate opdirt:in_overworld run execute in dirt_dimension run tp @s ~ ~ ~
execute as @a at @s in minecraft:dirt_dimension run spawnpoint @s ~ ~ ~
scoreboard objectives add WaterBottleUses used:potion
scoreboard players set @a WaterBottleUses 0
scoreboard objectives add portal_one minecraft.used:minecraft.water_bucket
scoreboard objectives add portal_two minecraft.used:minecraft.water_bucket



playsound entity.wither.spawn ambient @a
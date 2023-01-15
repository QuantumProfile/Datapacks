execute at @s run replaceitem block ~ ~ ~ container.0 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.1 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.2 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.3 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.4 minecraft:netherite_pickaxe{display:{Name:'{"text":"Perfect Pickaxe","color":"#5C2501","bold":true,"italic":false}',Lore:['{"text":"It is indeed a perfect pickaxe"}']}, tag:{perfect_pickaxe:1},Enchantments: [{id:"minecraft:efficiency",lvl:1000000000},{id:"minecraft:fortune",lvl:10}],Unbreakable:1}
execute at @s run replaceitem block ~ ~ ~ container.5 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.6 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.7 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.8 minecraft:air

playsound entity.villager.work_toolsmith master @a[distance=0..6]
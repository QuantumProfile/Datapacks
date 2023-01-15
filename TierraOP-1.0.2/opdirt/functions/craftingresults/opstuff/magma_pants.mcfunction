execute at @s run replaceitem block ~ ~ ~ container.0 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.1 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.2 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.3 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.4 minecraft:leather_leggings{display:{Lore:['{"text":"These pants make you immune to fire and lava"}'], color:16351261, Name:'{"text":"Magma Pants","bold":true,"italic":false,"color":"#D17200"}'}, Unbreakable:1,HideFlags:64,tag:{magma:1}}
execute at @s run replaceitem block ~ ~ ~ container.5 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.6 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.7 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.8 minecraft:air

playsound entity.player.hurt_on_fire master @a[distance=0..6] ~ ~ ~ 1 0.8
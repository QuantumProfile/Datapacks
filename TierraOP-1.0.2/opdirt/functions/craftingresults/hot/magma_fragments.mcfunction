execute at @s run replaceitem block ~ ~ ~ container.0 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.1 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.2 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.3 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.4 minecraft:fire_charge{display:{Name:'{"text":"Magma Fragments","color":"#800040","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1},{id:"minecraft:sharpness",lvl:3}],hot:2,HideFlags:1} 3
execute at @s run replaceitem block ~ ~ ~ container.5 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.6 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.7 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.8 minecraft:air

playsound entity.player.hurt_on_fire master @a[distance=0..6] ~ ~ ~ 0.5 0.8
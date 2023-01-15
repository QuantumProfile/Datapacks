execute at @s run replaceitem block ~ ~ ~ container.0 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.1 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.2 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.3 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.4 minecraft:blaze_rod{display:{Name:'{"text":"Flaming Rod","bold":true,"italic":false,"color":"#D17200"}'}, Unbreakable:1,HideFlags:66,tag:{magma:2},Enchantments:[{id:"minecraft:fire_aspect",lvl:1000000000},{id:"minecraft:sharpness",lvl:10}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1896885571,-1536540486,-1614370630,-414398261],Slot:"mainhand"}]}
execute at @s run replaceitem block ~ ~ ~ container.5 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.6 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.7 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.8 minecraft:air

playsound entity.player.hurt_on_fire master @a[distance=0..6] ~ ~ ~ 1 0.8
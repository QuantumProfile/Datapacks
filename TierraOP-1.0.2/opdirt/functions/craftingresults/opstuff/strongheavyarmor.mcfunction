# execute at @s run setblock ~ ~ ~ minecraft:air

# execute at @s run setblock ~ ~ ~ dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:netherite_chestplate",Count:1b,tag:{display:{Name:'{"text":"Enchanted Dirt","color":"#7A4F04","bold":true,"italic":false}'},Enchantments:[{}]}}],CustomName:'{"text":"Advanced Table","color":"#910000","bold":true,"italic":false}'} replace 

execute at @s run replaceitem block ~ ~ ~ container.0 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.1 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.2 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.3 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.4 minecraft:netherite_chestplate{display:{Name:'{"text":"Strong Heavy Armor","color":"#5C2501","bold":true,"italic":false}',Lore:['{"text":"This armor is really strong","color":"gray","italic": true}']}, Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:999,Operation:0,UUID:[I;470302158,-1202830353,-1987192349,301280378],Slot:"chest"}],tag:{armor:1}}
execute at @s run replaceitem block ~ ~ ~ container.5 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.6 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.7 minecraft:air
execute at @s run replaceitem block ~ ~ ~ container.8 minecraft:air

playsound entity.villager.work_toolsmith master @a[distance=0..6] ~ ~ ~ 1 1
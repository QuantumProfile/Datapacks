execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:iron_shovel",Count:1b,tag:{helper_tool:1,Damage:0}}]} run function opdirt:craftingresults//helper_tools/helper_tool2

execute if predicate opdirt:in_dirt_dimension run execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{iron:1}},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} run function opdirt:craftingresults/helper_tools/helper_tool1

execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:shears",Count:1b,tag:{helper_tool:2,Damage:0}}]} run function opdirt:craftingresults/helper_tools/helper_tool1

execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:coal",Count:1b,tag:{hot:1}},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:1b,id:"minecraft:coal",Count:1b,tag:{hot:1}},{Slot:2b,id:"minecraft:coal",Count:1b,tag:{hot:1}},{Slot:7b,id:"minecraft:stick",Count:1b}]} run function opdirt:craftingresults/helper_tools/little_helper

execute if predicate opdirt:in_no_ores_overworld run execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b,tag:{iron:1}},{Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{iron:1}},{Slot:2b,id:"minecraft:iron_ingot",Count:1b,tag:{iron:1}},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} run function opdirt:craftingresults/helper_tools/helper_tool3
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b},{Slot:1b,id:"minecraft:cobblestone",Count:1b},{Slot:2b,id:"minecraft:cobblestone",Count:1b},{Slot:3b,id:"minecraft:cobblestone",Count:1b},{Slot:4b,id:"minecraft:cobblestone",Count:1b},{Slot:5b,id:"minecraft:cobblestone",Count:1b},{Slot:6b,id:"minecraft:cobblestone", Count:1b},{Slot:7b,id:"minecraft:cobblestone",Count:1b},{Slot:8b,id:"minecraft:cobblestone",Count:1b}]} run function opdirt:craftingresults/cobble/enchanted_cobblestone

execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:2b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:3b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:4b,id:"minecraft:furnace",Count:1b},{Slot:5b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:6b,id:"minecraft:cobblestone", Count:1b,tag:{cobble:1}},{Slot:7b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}},{Slot:8b,id:"minecraft:cobblestone",Count:1b,tag:{cobble:1}}]} run function opdirt:craftingresults/cobble/furnace

function opdirt:craftingresults/cobble/cobblecraft

execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b},{Slot:4b,id:"minecraft:dirt",Count:1b},{Slot:1b,id:"minecraft:dirt",Count:1b},{Slot:2b,id:"minecraft:dirt",Count:1b},{Slot:3b,id:"minecraft:dirt",Count:1b},{Slot:5b,id:"minecraft:dirt",Count:1b},{Slot:7b,id:"minecraft:bowl",tag:{filter:1}}]} run function opdirt:craftingresults/cobble/stone_dust
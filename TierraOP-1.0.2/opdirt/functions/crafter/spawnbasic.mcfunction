execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:0b, Small:1b, NoGravity:true, Tags:["crafter1"], DisabledSlots:16128}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Basic Table","color":"#0DD69A","bold":true, "italic":false}'}
kill @s[type=item]
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:0b, Small:1b, NoGravity:true, Tags:["crafter2"], DisabledSlots:16128}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Advanced Table","color":"#910000","bold":true, "italic":false}'}
kill @s[type=item]
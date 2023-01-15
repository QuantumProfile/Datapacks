clear @s elytra
scoreboard players set @s effectTime 0
scoreboard players set @s elytra 0
execute if score @s doubleJump matches 1.. run function dj:double_jump/main/w_0/i_0/i_0

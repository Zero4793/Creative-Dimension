clear @s
effect clear @s
effect give @s minecraft:slow_falling 1 1 true
gamemode survival @s

xp set @s 0 points
xp set @s 0 levels
execute if score @s zero.xl matches 1.. run function creative:return_xl
execute if score @s zero.xp matches 1.. run function creative:return_xp

execute in zero:admin positioned 0 0 0 run function creative:return_inventory

execute store result storage pos X int 1 run scoreboard players get @s pos.x
execute store result storage pos Y int 1 run scoreboard players get @s pos.y
execute store result storage pos Z int 1 run scoreboard players get @s pos.z
function creative:return_tp with storage pos

tellraw @s {"color": "green", "text": "You are now in survival mode!"}
scoreboard players set @s creative 0
scoreboard players set @s admin 0
tag @s remove inCreative
tag @s remove inAdmin
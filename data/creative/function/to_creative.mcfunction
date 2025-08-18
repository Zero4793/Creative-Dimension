execute if dimension the_end run scoreboard players set @s dimension 1
execute if dimension overworld run scoreboard players set @s dimension 0
execute if dimension the_nether run scoreboard players set @s dimension -1
execute store result score @s pos.x run data get entity @s Pos[0]
execute store result score @s pos.y run data get entity @s Pos[1]
execute store result score @s pos.z run data get entity @s Pos[2]

gamemode creative @s
execute store result score @s zero.xl run xp query @s levels
execute store result score @s zero.xp run xp query @s points
execute in zero:admin positioned 0 0 0 run function creative:store_inventory
clear @s
tellraw @s {"color": "green", "text": "You are now in creative!"}

# heights 
execute as @a[scores={creative=1}] at @s in creative:creative run tp @s ~ 0 ~
execute as @a[scores={creative=2}] at @s in creative:creative run tp @s ~ -73 ~
execute as @a[scores={creative=3}] at @s in creative:creative run tp @s ~ -154 ~
execute as @a[scores={admin=1..}] at @s in zero:admin run tp @s ~ 1 ~
scoreboard players set @s creative 0
scoreboard players set @s admin 0

execute as @s at @s if dimension creative:creative run tag @s add inCreative
execute as @s at @s if dimension zero:admin run tag @s add inAdmin
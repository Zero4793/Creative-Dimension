#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Creative Dimension ","hoverEvent":{"action":"show_text","contents":{"text":"A creative dimension for players","color":"blue"}},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"zero.creative-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.creative-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

scoreboard players enable @a zero.creative

#prevent death by void with trigger -1
execute in zero:creative as @a[distance=1..] at @s if entity @s[y=-200,dy=-16] run trigger zero.creative set -1

# 1-3
execute as @a[scores={zero.creative=1..3}] at @s unless dimension minecraft:overworld run tellraw @s {"color": "red", "text": "You must be in the overworld to use this command!"}
execute as @a[scores={zero.creative=1..3}] at @s unless dimension minecraft:overworld run scoreboard players set @s zero.creative -2
execute as @a[scores={zero.creative=1..3}] run gamemode creative @s
execute as @a[scores={zero.creative=1..3}] run execute store result score @s zero.xl run xp query @s levels
execute as @a[scores={zero.creative=1..3}] run execute store result score @s zero.xp run xp query @s points
execute as @a[scores={zero.creative=1..3}] in zero:admin positioned 0 0 0 run function zero:creative/store_inventory
execute as @a[scores={zero.creative=1..3}] run clear @s
execute as @a[scores={zero.creative=1..3}] run tellraw @s {"color": "green", "text": "You are now in creative!"}
# 1
execute as @a[scores={zero.creative=1}] at @s in zero:creative run tp @s ~ 0 ~
# 2
execute as @a[scores={zero.creative=2}] at @s in zero:creative run tp @s ~ -73 ~
# 3
execute as @a[scores={zero.creative=3}] at @s in zero:creative run tp @s ~ -154 ~
# 1-3 set to 4
execute as @a[scores={zero.creative=1..3}] run scoreboard players set @s zero.creative -2
# -1
execute as @a[scores={zero.creative=-1}] at @s unless dimension zero:creative run tellraw @s {"color": "red", "text": "You must be in the creative dimension to use this command!"}
execute as @a[scores={zero.creative=-1}] at @s unless dimension zero:creative run scoreboard players set @s zero.creative 0
execute as @a[scores={zero.creative=-1}] run clear @s
execute as @a[scores={zero.creative=-1}] run effect clear @s
execute as @a[scores={zero.creative=-1}] run effect give @s minecraft:slow_falling 1 1 true
execute as @a[scores={zero.creative=-1}] at @s in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s
execute as @a[scores={zero.creative=-1}] run gamemode survival @s
execute as @a[scores={zero.creative=-1}] run xp set @s 0 points
execute as @a[scores={zero.creative=-1}] run xp set @s 0 levels
execute as @a[scores={zero.creative=-1}] if score @s zero.xl matches 1.. run function zero:creative/return_xl
execute as @a[scores={zero.creative=-1}] if score @s zero.xp matches 1.. run function zero:creative/return_xp
execute as @a[scores={zero.creative=-1}] in zero:admin positioned 0 0 0 run function zero:creative/return_inventory
execute as @a[scores={zero.creative=-1}] run tellraw @s {"color": "green", "text": "You are now in survival mode!"}
execute as @a[scores={zero.creative=-1}] run scoreboard players set @s zero.creative 0

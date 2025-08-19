# credit: https://www.reddit.com/r/MinecraftCommands/wiki/questions/storeinventory/#wiki_java

#as player, at creative 0 0 0
setblock ~ ~ ~ chest
tag @s add target
execute as @e[type=marker,tag=inv_store] if score @s zero.id = @p[tag=target] zero.id run function creative:return_equipment
execute as @e[type=marker,tag=inv_store] if score @s zero.id = @p[tag=target] zero.id run function creative:return_inventory2
tag @s remove target
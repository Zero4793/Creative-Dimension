# credit: https://www.reddit.com/r/MinecraftCommands/wiki/questions/storeinventory/#wiki_java

#as player, at creative 0 0 0
setblock ~ ~ ~ chest
tag @s add target
execute as @e[type=marker,tag=inv_store] if score @s id = @p[tag=target] id run function creative:return_inventory2
tag @s remove target
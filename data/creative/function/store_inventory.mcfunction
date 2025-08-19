# credit: https://www.reddit.com/r/MinecraftCommands/wiki/questions/storeinventory/#wiki_java

# summon marker
summon marker ~ ~ ~ {Tags:["inv_store","inv_new"]}
# link marker to player    
scoreboard players operation @e[tag=inv_new] zero.id = @s zero.id
# copy Inventory of player to marker data.Inventory
data modify entity @e[tag=inv_new,limit=1] data.Inventory set from entity @s Inventory
data modify entity @e[tag=inv_new,limit=1] data.equipment set from entity @s equipment
# remove the new tag to get ready for the next player
tag @e[tag=inv_new] remove inv_new
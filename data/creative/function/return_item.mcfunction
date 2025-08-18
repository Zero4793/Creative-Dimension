# as marker, at admin 0 0 0, player=target

# get the slot number into a scoreboard so we can use it later
execute store result score #slot temp run data get entity @s data.Inventory[0].Slot
# remove the Slot data so it doesn't get removed from the chest
data remove entity @s data.Inventory[0].Slot
# empty the chest items
data merge block ~ ~ ~ {Items:[]}
# copy the item data to the chest
data modify block ~ ~ ~ Items append from entity @s data.Inventory[0]

# give player the item based the slot number
execute as @a[tag=target] run function creative:give_correct_slot

# remove item data from entity
data remove entity @s data.Inventory[0]
# count down the remaining slots
scoreboard players remove #items temp 1
# run the same function again if there are more items to process
execute if score #items temp matches 1.. run function creative:return_item
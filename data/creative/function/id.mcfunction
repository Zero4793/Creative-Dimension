#credit: https://www.reddit.com/r/MinecraftCommands/wiki/questions/linkentity/

# add 0 to all players' id score. This ensures that every player 
# has a score (of 0) while not changing any existing scores
scoreboard players add @a id 0

# Execute as all players that have a score of 0 (aka no ID yet)
execute as @a[scores={id=0}] run function creative:init_id
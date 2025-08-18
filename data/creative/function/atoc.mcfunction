execute in creative:creative run tp @s ~ 0 ~
effect give @s minecraft:slow_falling 1 1 true
scoreboard players set @s creative 0
scoreboard players set @s admin 0
tag @s remove inAdmin
tag @s add inCreative

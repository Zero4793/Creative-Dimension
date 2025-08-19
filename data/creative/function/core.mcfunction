#Zero_4793
scoreboard players enable @a creative
scoreboard players enable @a[tag=ADMIN] admin

# to creative
execute as @a[scores={creative=1..},tag=!inCreative,tag=!inAdmin] at @s run function creative:to_creative
# from creative
execute as @a[scores={creative=1..},tag=inCreative,tag=!inAdmin] at @s run function creative:from_creative


# to admin
execute as @a[scores={admin=1..},tag=!inAdmin,tag=!inCreative] at @s run function creative:to_creative
# from admin
execute as @a[scores={admin=1..},tag=inAdmin,tag=!inCreative] at @s run function creative:from_creative


#creative to admin and reverse
execute as @a[scores={admin=1..},tag=inCreative,tag=!inAdmin] at @s run function creative:ctoa
execute as @a[scores={creative=1..},tag=inAdmin,tag=!inCreative] at @s run function creative:atoc


#prevent death in creative
# by void
execute in creative:creative as @a[distance=0..] at @s if entity @s[y=-200,dy=-16] run tp @s ~ -180 ~


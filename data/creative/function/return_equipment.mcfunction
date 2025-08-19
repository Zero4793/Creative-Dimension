# as marker, at admin 0 0 0, player=target

data modify block 0 0 0 Items append from entity @s data.equipment.offhand
item replace entity @a[tag=target] weapon.offhand from block 0 0 0 container.0
data modify block 0 0 0 Items append from entity @s data.equipment.head
item replace entity @a[tag=target] armor.head from block 0 0 0 container.0
data modify block 0 0 0 Items append from entity @s data.equipment.chest
item replace entity @a[tag=target] armor.chest from block 0 0 0 container.0
data modify block 0 0 0 Items append from entity @s data.equipment.legs
item replace entity @a[tag=target] armor.legs from block 0 0 0 container.0
data modify block 0 0 0 Items append from entity @s data.equipment.feet
item replace entity @a[tag=target] armor.feet from block 0 0 0 container.0

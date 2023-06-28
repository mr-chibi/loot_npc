#######################################################################
# Display Error, if admin NOT near NPC:
#######################################################################
execute unless entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"},{"text":"Please, stand 1-3 blocks near Loot NPC to remove game! ", "color": "red"}]

#######################################################################
# Grant Tag Removal Tag:
#######################################################################
execute if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run tag @s add npc_admin
execute if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"},{"text":"Loot Chest Game Removed! ", "color": "green"}]

#######################################################################
# Remove Chests:
#######################################################################
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=1] at @s if entity @a[distance=0..10,tag=npc_admin] run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=2] at @s if entity @a[distance=0..10,tag=npc_admin] run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=3] at @s if entity @a[distance=0..10,tag=npc_admin] run setblock ~ ~ ~ minecraft:air

#######################################################################
# Remove Entity: [Marker/Armorstand]
#######################################################################
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=1] at @s if entity @a[distance=0..10,tag=npc_admin] run kill @s
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=2] at @s if entity @a[distance=0..10,tag=npc_admin] run kill @s
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] as @e[type=minecraft:marker,tag=chest_rng,tag=3] at @s if entity @a[distance=0..10,tag=npc_admin] run kill @s

#######################################################################
# Remove NPC:
#######################################################################
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..3,tag=npc_admin] run kill @s

#######################################################################
# Reset Command:
#######################################################################
tag @s remove npc_admin
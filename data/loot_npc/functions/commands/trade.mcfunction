#######################################################################
# Deny [Trade Item], If player doesn't have it!
#######################################################################
execute unless entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Traded denied!! ", "color": "red"}, {"text":"You required ", "color": "#A3A3A3"}, {"text":"1 gold block", "color": "red"}, {"text":" to play!!", "color": "#A3A3A3"}]

#######################################################################
# Accepted [Trade Item] display dialogue:
#######################################################################
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Trade accepted!!", "color": "green"}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Select only ", "color": "#A3A3A3"}, {"text":"1 chest", "color": "red"}, {"text":"! choose wisely!! It's Randomized!", "color": "#A3A3A3"}]

#######################################################################
# Enable Minigame for [Player]:
#######################################################################
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run tag @s add lcp

#######################################################################
# Remove [Trade Item]:
#######################################################################
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run clear @s minecraft:gold_block 1

#######################################################################
# Trigger RNG Reset:
#######################################################################
execute as @e[type=minecraft:marker,tag=chest_rng,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run tag @s remove lnc_chest
execute as @e[type=minecraft:marker,tag=chest_rng,tag=1,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run data modify entity @s CustomName set value "{\"text\": \"Chest 1\"}"
execute as @e[type=minecraft:marker,tag=chest_rng,tag=2,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run data modify entity @s CustomName set value "{\"text\": \"Chest 2\"}"
execute as @e[type=minecraft:marker,tag=chest_rng,tag=3,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run data modify entity @s CustomName set value "{\"text\": \"Chest 3\"}"


#######################################################################
# Trigger RNG:
#######################################################################
execute as @e[type=minecraft:marker,tag=chest_rng,sort=random,limit=1,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run tag @s add lnc_chest
# execute as @e[type=minecraft:marker,tag=lnc_chest,distance=0..10] at @s if entity @a[tag=lcp,distance=0..10] run data modify entity @s CustomName set value "{\"text\": \"selected\"}"

#######################################################################
# Reset Command:
#######################################################################
scoreboard players reset @s trade_loot_npc
#######################################################################
# Player "selects" correct chest!
#######################################################################
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=lnc_chest] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Winner!! ", "color": "green"}]
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=lnc_chest] run playsound minecraft:block.note_block.chime master @s ~ ~ ~
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=lnc_chest] run function loot_npc:chest/reward
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=lnc_chest] run tag @s remove lcp

#######################################################################
# Player "selects" incorrect chest!
#######################################################################
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=!lnc_chest] run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Better luck next time! ", "color": "red"}]
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=!lnc_chest] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~
execute as @s[scores={loot_npc_chest=1..}] if entity @e[type=minecraft:marker,distance=0..2,tag=!lnc_chest] run tag @s remove lcp

#######################################################################
# Reset Loot Chest:
#######################################################################
scoreboard players set @s[scores={loot_npc_chest=1..}] loot_npc_chest 0
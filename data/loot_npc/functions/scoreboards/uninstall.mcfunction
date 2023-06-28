#######################################################################
# Uninstall scoreboard data:
#######################################################################
scoreboard objectives remove loot_npc_talk
scoreboard objectives remove trade_loot_npc
scoreboard objectives remove loot_npc_chest

# Uninstall Message:
execute as @a at @s run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Succesfully Removed All Datapack Data! ", "color": "green"}]
execute as @a at @s run tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"}, {"text":"Do ", "color": "#A3A3A3"}, {"text":"/datapack disable [pack] ", "color": "red"}, {"text":"to uninstall pack! ", "color": "#A3A3A3"}]
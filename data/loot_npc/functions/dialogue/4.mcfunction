#######################################################################
# Display Dialogue:
#######################################################################
tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"},{"text":"Don't you have some adventuring, building, or somewhere else to be?", "color": "#A3A3A3"}]

#######################################################################
# Continue Dialogue:
#######################################################################
scoreboard players add @s loot_npc_talk 1
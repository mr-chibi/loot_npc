#######################################################################
# Display Dialogue:
#######################################################################
tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"},{"text":"Welcome ", "color": "#A3A3A3"}, {"text":"Advenure! ", "color": "red"}, {"text":"Are you intrested in winning some loot? At a price of... ", "color": "#A3A3A3"}, {"text":"1 Gold Block", "color": "yellow"}, {"text":"? \n", "color": "#A3A3A3"}]
tellraw @s [{"text": "[", "color": "white"},{"text": "Loot NPC", "color":"#832FF1"}, {"text": "] ", "color": "white"},{"text":"Do following command to play game: ", "color": "#A3A3A3"}, {"text":"/trigger trade_loot_npc", "color": "green"}]

#######################################################################
# Continue Dialogue:
#######################################################################
scoreboard players add @s loot_npc_talk 1
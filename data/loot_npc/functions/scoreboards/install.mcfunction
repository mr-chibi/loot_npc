#######################################################################
# Install Scoreboard Data:
#######################################################################

# Detect if Player talked to "NPC"
scoreboard objectives add loot_npc_talk minecraft.custom:minecraft.talked_to_villager

# Detect if Player toggled command next to "NPC":
scoreboard objectives add trade_loot_npc trigger

# Detect if Player opened one of the "NPC" chests:
scoreboard objectives add loot_npc_chest minecraft.custom:minecraft.open_chest
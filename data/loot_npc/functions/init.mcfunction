#######################################################################
# Prevent NPC from doing Trades:
#######################################################################
execute as @e[type=minecraft:villager,tag=chest_npc] at @s if entity @a[distance=0..5] run data modify entity @s Offers.Recipes set value []

#######################################################################
# Player, Near 1-5 Blocks "Loot NPC" enable "Trade" command!
#######################################################################
execute as @a at @s if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..5] run scoreboard players enable @s[tag=!lcp] trade_loot_npc

#######################################################################
# Trade Command:
#######################################################################
execute as @a at @s[scores={trade_loot_npc=1}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:commands/trade

#######################################################################
# Detect rng Command:
#######################################################################
execute as @a at @s[tag=lcp] run function loot_npc:chest/rng

#######################################################################
# Player, "Right Clicks" NPC, [Display Dialogue]:
#######################################################################
execute as @a at @s[scores={loot_npc_talk=1}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:dialogue/1
execute as @a at @s[scores={loot_npc_talk=3}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:dialogue/2
execute as @a at @s[scores={loot_npc_talk=5}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:dialogue/3
execute as @a at @s[scores={loot_npc_talk=7}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:dialogue/4
execute as @a at @s[scores={loot_npc_talk=9}] if entity @e[type=minecraft:villager,tag=chest_npc,distance=0..3] run function loot_npc:dialogue/5

#######################################################################
# Reset Player's Scoreboard if there not near NPC:
#######################################################################
execute as @a at @s unless entity @e[type=minecraft:villager,tag=chest_npc,distance=0..2] run function loot_npc:scoreboards/reset

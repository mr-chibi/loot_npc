#######################################################################
# Summon RNG Prizes:
#######################################################################
function loot_npc:entities/rng_prize

#######################################################################
# Select "1" RNG Randomly Entity
#######################################################################
execute as @e[type=minecraft:marker,tag=lnc_reward,sort=random,limit=1,distance=0..2] at @s if entity @a[tag=lcp,distance=0..2] run tag @s add rnd_reward

#######################################################################
# Remove "all" NOT selected RNG Entities:
#######################################################################
execute if entity @e[type=minecraft:marker,tag=lnc_reward,distance=0..2] run kill @e[type=minecraft:marker,tag=lnc_reward,tag=!rnd_reward,distance=0..2]

#######################################################################
# Players Reward [Lootable]:
#######################################################################
function loot_npc:loot

#######################################################################
# Remove Selected RNG Loot Entity:
#######################################################################
execute if entity @e[type=minecraft:marker,tag=rnd_reward,distance=0..2] run kill @e[type=minecraft:marker,tag=rnd_reward,distance=0..2]
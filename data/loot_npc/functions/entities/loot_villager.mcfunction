# West
execute as @s[y_rotation=-135..-45] run summon minecraft:villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,Rotation:[90f],VillagerData:{profession:"minecraft:weaponsmith", level:0, type:"minecraft:swamp"},CustomNameVisible:1b,CustomName:"{\"text\": \"Loot NPC\"}",Tags:["chest_npc"]}

execute as @s[y_rotation=-135..-45] run setblock ~4 ~ ~-2 minecraft:chest[facing=west]{Lock:"chest_1"}
execute as @s[y_rotation=-135..-45] run setblock ~4 ~ ~ minecraft:chest[facing=west]{Lock:"chest_2"}
execute as @s[y_rotation=-135..-45] run setblock ~4 ~ ~2 minecraft:chest[facing=west]{Lock:"chest_3"}


# South
execute as @s[y_rotation=135..-135] run summon minecraft:villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,Rotation:[0f],VillagerData:{profession:"minecraft:weaponsmith", level:0, type:"minecraft:swamp"},CustomNameVisible:1b,CustomName:"{\"text\": \"Loot NPC\"}",Tags:["chest_npc"]}

execute as @s[y_rotation=135..-135] run setblock ~-2 ~ ~-4 minecraft:chest[facing=south]{Lock:"chest_2"}
execute as @s[y_rotation=135..-135] run setblock ~ ~ ~-4 minecraft:chest[facing=south]{Lock:"chest_2"}
execute as @s[y_rotation=135..-135] run setblock ~2 ~ ~-4 minecraft:chest[facing=south]{Lock:"chest_3"}


# East
execute as @s[y_rotation=45..135] run summon minecraft:villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,Rotation:[270f],VillagerData:{profession:"minecraft:weaponsmith", level:0, type:"minecraft:swamp"},CustomNameVisible:1b,CustomName:"{\"text\": \"Loot NPC\"}",Tags:["chest_npc"]}

execute as @s[y_rotation=45..135] run setblock ~-4 ~ ~2 minecraft:chest[facing=east]{Lock:"chest_1"}
execute as @s[y_rotation=45..135] run setblock ~-4 ~ ~ minecraft:chest[facing=east]{Lock:"chest_2"}
execute as @s[y_rotation=45..135] run setblock ~-4 ~ ~-2 minecraft:chest[facing=east]{Lock:"chest_3"}


# North
execute as @s[y_rotation=-45..45] run summon minecraft:villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,Rotation:[180f],VillagerData:{profession:"minecraft:weaponsmith", level:0, type:"minecraft:swamp"},CustomNameVisible:1b,CustomName:"{\"text\": \"Loot NPC\"}",Tags:["chest_npc"]}

execute as @s[y_rotation=-45..45] run setblock ~2 ~ ~4 minecraft:chest[facing=north]{Lock:"chest_1"}
execute as @s[y_rotation=-45..45] run setblock ~ ~ ~4 minecraft:chest[facing=north]{Lock:"chest_2"}
execute as @s[y_rotation=-45..45] run setblock ~-2 ~ ~4 minecraft:chest[facing=north]{Lock:"chest_3"}

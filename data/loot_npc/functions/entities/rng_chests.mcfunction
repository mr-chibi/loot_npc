# West
execute as @s[y_rotation=-135..-45] run summon minecraft:marker ~4 ~ ~-2 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 1\"}",Tags:["chest_rng", "1"]}
execute as @s[y_rotation=-135..-45] run summon minecraft:marker ~4 ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 2\"}",Tags:["chest_rng", "2"]}
execute as @s[y_rotation=-135..-45] run summon minecraft:marker ~4 ~ ~2 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 3\"}",Tags:["chest_rng", "3"]}

# South
execute as @s[y_rotation=135..-135] run summon minecraft:marker ~-2 ~ ~-4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 1\"}",Tags:["chest_rng", "1"]}
execute as @s[y_rotation=135..-135] run summon minecraft:marker ~ ~ ~-4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 2\"}",Tags:["chest_rng", "2"]}
execute as @s[y_rotation=135..-135] run summon minecraft:marker ~2 ~ ~-4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 3\"}",Tags:["chest_rng", "3"]}

# East
execute as @s[y_rotation=45..135] run summon minecraft:marker ~-4 ~ ~2 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 1\"}",Tags:["chest_rng", "1"]}
execute as @s[y_rotation=45..135] run summon minecraft:marker ~-4 ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 2\"}",Tags:["chest_rng", "2"]}
execute as @s[y_rotation=45..135] run summon minecraft:marker ~-4 ~ ~-2 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 3\"}",Tags:["chest_rng", "3"]}

# North
execute as @s[y_rotation=-45..45] run summon minecraft:marker ~2 ~ ~4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 1\"}",Tags:["chest_rng", "1"]}
execute as @s[y_rotation=-45..45] run summon minecraft:marker ~ ~ ~4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 2\"}",Tags:["chest_rng", "2"]}
execute as @s[y_rotation=-45..45] run summon minecraft:marker ~-2 ~ ~4 {CustomNameVisible:1b,CustomName:"{\"text\": \"Chest 3\"}",Tags:["chest_rng", "3"]}
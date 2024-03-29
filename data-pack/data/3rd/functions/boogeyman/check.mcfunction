# Check if the boogeyman killed another player since the timer started
# Method: check if the current kill count > old kill count

# Set "boogeymanKilled" to current kill count
scoreboard players operation boogeymanKilled 3rd_main = @a[tag=3rd_boogeyman] 3rd_kills
# Subtract old kill count from current kill count
scoreboard players operation boogeymanKilled 3rd_main -= boogeymanCurrentKills 3rd_main

# Check if the boogeyman was not cured already and has killed a player
execute as @a[tag=3rd_boogeyman] run execute if score boogeymanCured 3rd_main matches 0 run execute if score boogeymanKilled 3rd_main matches 1.. run function 3rd:boogeyman/successfully_killed
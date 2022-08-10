# TODO #1 Add countdown when choosing boogeyman

# Randomly choose a boogeyman.
tag @r add 3rd_boogeyman

# Store the current number of player kills for the boogeyman.
execute as @r[tag=3rd_boogeyman] run scoreboard players operation boogeymanCurrentKills 3rd_main = @s 3rd_kills
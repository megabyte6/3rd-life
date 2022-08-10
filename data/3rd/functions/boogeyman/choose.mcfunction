# TODO #1 Add countdown when choosing boogeyman

# Randomly choose a boogeyman.
tag @r add 3rd_boogeyman

# Store the current number of player kills for the boogeyman.
scoreboard players operation boogeymanCurrentKills 3rd_main = @a[tag=3rd_boogeyman] 3rd_kills

# TODO #2 Show message telling boogeyman
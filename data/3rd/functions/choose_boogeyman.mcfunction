# Randomly choose a boogeyman.
tag @r add 3rd_boogeyman

# Store the current number of player kills for the boogeyman.
execute as @r[tag=3rd_boogeyman] run execute store result storage 3rd:boogeyman currentKills int 1 run scoreboard players get @s 3rd_kills
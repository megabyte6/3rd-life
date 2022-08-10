# TODO #1 Add countdown when choosing boogeyman

# Remove old tag from last boogeyman
tag @a remove 3rd_boogeyman

# Randomly choose a boogeyman
tag @r add 3rd_boogeyman

# Store the current number of player kills for the boogeyman
scoreboard players operation boogeymanCurrentKills 3rd_main = @a[tag=3rd_boogeyman] 3rd_kills

# Show message telling if you're the boogeyman
schedule function 3rd:custom_title/3 0t replace
schedule function 3rd:custom_title/2 20t replace
schedule function 3rd:custom_title/1 40t replace

schedule function 3rd:custom_title/you_are 60t replace

schedule function 3rd:custom_title/the_boogeyman 160t replace
schedule function 3rd:custom_title/not_the_boogeyman 160t replace
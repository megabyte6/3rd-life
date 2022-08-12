# Remove old tag from last boogeyman
tag @a remove 3rd_boogeyman

# Reset title state variables
scoreboard players set 1_minute_left 3rd_title_shown 0
scoreboard players set 1 3rd_title_shown 0
scoreboard players set 2 3rd_title_shown 0
scoreboard players set 3 3rd_title_shown 0
scoreboard players set 5_minutes_left 3rd_title_shown 0
scoreboard players set 10_minutes_left 3rd_title_shown 0
scoreboard players set not_the_boogeyman 3rd_title_shown 0
scoreboard players set the_boogeyman 3rd_title_shown 0
scoreboard players set you_are 3rd_title_shown 0

# Randomly choose a boogeyman
tag @r add 3rd_boogeyman

# Store the current number of player kills for the boogeyman
scoreboard players operation boogeymanCurrentKills 3rd_main = @a[tag=3rd_boogeyman] 3rd_kills

# Show message telling if you're the boogeyman
schedule function 3rd:custom_title/3 1t replace
schedule function 3rd:custom_title/2 21t replace
schedule function 3rd:custom_title/1 41t replace

schedule function 3rd:custom_title/you_are 61t replace

schedule function 3rd:custom_title/the_boogeyman 161t replace
schedule function 3rd:custom_title/not_the_boogeyman 161t replace
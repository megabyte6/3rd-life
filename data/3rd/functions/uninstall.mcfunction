schedule clear 3rd:tick

# Remove teams
team remove 3rd_first
team remove 3rd_second
team remove 3rd_third
team remove 3rd_dead
tellraw @a "4 teams removed"

# Remove scoreboards
scoreboard objectives remove 3rd_death
tellraw @a "1 scoreboard removed"

tellraw @a "You can now remove this datapack!"
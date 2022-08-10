# Remove schedules
schedule clear 3rd:tick
schedule clear 3rd:boogeyman/update_timer
tellraw @a "2 schedules removed"

# Remove teams
team remove 3rd_first
team remove 3rd_second
team remove 3rd_third
team remove 3rd_dead
tellraw @a "4 teams removed"

# Remove scoreboards
scoreboard objectives remove 3rd_main
scoreboard objectives remove 3rd_deaths
scoreboard objectives remove 3rd_kills
tellraw @a "3 scoreboards removed"

tellraw @a "You can now remove this datapack!"
# Remove schedules
schedule clear 3rd:tick
schedule clear 3rd:second
tellraw @a "2 schedules removed"

# Remove teams
team remove 3rd_first
team remove 3rd_second
team remove 3rd_third
team remove 3rd_dead
tellraw @a "4 teams removed"

# Remove scoreboards
scoreboard objectives remove 3rd_main
scoreboard objectives remove 3rd_constants
scoreboard objectives remove 3rd_title_shown
scoreboard objectives remove 3rd_deaths
scoreboard objectives remove 3rd_kills
scoreboard objectives remove 3rd_get_life
scoreboard objectives remove give_life
scoreboard objectives remove time_left
tellraw @a "7 scoreboards removed"

tellraw @a "You can now remove this datapack!"
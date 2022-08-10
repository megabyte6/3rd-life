# Remove schedules
schedule clear 3rd:tick
schedule clear 3rd:update_timer
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

# Remove stored nbt data tags
data remove storage 3rd:init worldborder
data remove storage 3rd:init mainScoreboard
data remove storage 3rd:init deathCounter
data remove storage 3rd:init killCounter
tellraw @a "4 storage tags removed"

tellraw @a "You can now remove this datapack!"
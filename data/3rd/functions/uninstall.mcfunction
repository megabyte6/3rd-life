schedule clear 3rd:tick

# Remove teams
team remove 3rd_first
team remove 3rd_second
team remove 3rd_third
team remove 3rd_dead
tellraw @a "4 teams removed"

# Remove scoreboards
scoreboard objectives remove 3rd_deaths
scoreboard objectives remove 3rd_kills
tellraw @a "2 scoreboard removed"

# Remove stored nbt data tags
data remove storage 3rd:init worldborder
data remove storage 3rd:init deathCounter
data remove storage 3rd:boogeyman currentKills
tellraw @a "3 storage tag removed"

tellraw @a "You can now remove this datapack!"
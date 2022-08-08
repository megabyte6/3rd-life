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

# Remove stored nbt data tags
data remove storage 3rd:init worldborder
data remove storage 3rd:init deathCounter
tellraw @a "2 storage tag removed"

tellraw @a "You can now remove this datapack!"
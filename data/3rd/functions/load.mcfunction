# Set up worldborder unless it has already been set up.
worldborder center 0 0
execute unless data storage 3rd init run worldborder set 512
execute unless data storage 3rd init run data modify storage 3rd init set value 1b

# Add scoreboards
scoreboard objectives add 3rd_death deathCount

# Set up teams
team add 3rd_first
team modify 3rd_first color green
team add 3rd_second
team modify 3rd_second color yellow
team add 3rd_third
team modify 3rd_third color red
team add 3rd_dead
team modify 3rd_dead prefix [ "", {"text": "["}, {"text": "DEAD","color": "gray"}, {"text": "] "} ]
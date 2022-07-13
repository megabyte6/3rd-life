# Set up worldborder unless it has already been set up.
worldborder center 0 0
execute unless data storage 3l init run worldborder set 512
execute unless data storage 3l init run data modify storage 3l init set value 1b

# Add scoreboards
scoreboard objectives add 3l_death deathCount

team add 3l_first
team modify 3l_first color green
team add 3l_second
team modify 3l_second color yellow
team add 3l_third
team modify 3l_third color red
team add 3l_died
team modify 3l_died prefix [ "", {"text": "["}, {"text": "DIED","color": "gray"}, {"text": "] "} ]
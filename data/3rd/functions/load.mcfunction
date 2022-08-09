# Set up worldborder unless it has already been set up.
worldborder center 0 0
execute unless data storage 3rd:init worldborder run worldborder set 512
execute unless data storage 3rd:init worldborder run data modify storage 3rd:init worlderborder set value 1b

# Add scoreboards
execute unless data storage 3rd:init deathCounter run scoreboard objectives add 3rd_deaths deathCount "Deaths"
execute unless data storage 3rd:init deathCounter run data modify storage 3rd:init deathCounter set value 1b

execute unless data storage 3rd:init killCounter run scoreboard objectives add 3rd_kills playerKillCount "Kills"
execute unless data storage 3rd:init killCounter run data modify storage 3rd:init killCounter set value 1b

# Set up teams
team add 3rd_first "3 lives"
team modify 3rd_first color green
team add 3rd_second "2 lives"
team modify 3rd_second color yellow
team add 3rd_third "1 life"
team modify 3rd_third color red
team add 3rd_dead "Dead"
team modify 3rd_dead prefix [ "", {"text": "[DEAD] ","color": "gray"} ]
team modify 3rd_dead color gray
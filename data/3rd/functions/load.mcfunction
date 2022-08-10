# Set up worldborder unless it has already been set up
worldborder center 0 0
worldborder set 512

# Add scoreboards
scoreboard objectives add 3rd_main dummy "3rd Main"
scoreboard objectives add 3rd_deaths deathCount "Deaths"
scoreboard objectives add 3rd_kills playerKillCount "Kills"

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

# Continue timer if boogeyman was already choosen
function 3rd:boogeyman/update_timer
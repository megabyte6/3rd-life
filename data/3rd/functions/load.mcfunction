# Set up worldborder unless it has already been set up
worldborder center 0 0
worldborder set 512

# Add scoreboards
scoreboard objectives add 3rd_main dummy "3rd Main"
scoreboard objectives add 3rd_constants dummy "3rd Constants"
scoreboard objectives add 3rd_deaths deathCount "Deaths"
scoreboard objectives add 3rd_kills playerKillCount "Kills"
scoreboard objectives add 3rd_get_life minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add give_life trigger
scoreboard objectives add time_left trigger

# Set constants
scoreboard players set seconds_in_a_minute 3rd_constants 60
scoreboard players set boogeyman_timer_length 3rd_constants 7200

# Enable trigger commands for players
scoreboard players set @a give_life 0
scoreboard players enable @a give_life
scoreboard players set @a time_left 0
scoreboard players enable @a time_left

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
function 3rd:second
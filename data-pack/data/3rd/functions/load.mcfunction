# Set up worldborder unless it has already been set up
worldborder center 0 0
worldborder set 512

# Add scoreboards
scoreboard objectives add 3rd_main dummy "3rd Main"
scoreboard objectives add 3rd_constants dummy "3rd Constants"
scoreboard objectives add 3rd_title_shown dummy "Title Shown"
scoreboard objectives add 3rd_deaths deathCount "Deaths"
scoreboard objectives add 3rd_kills playerKillCount "Kills"
scoreboard objectives add 3rd_get_life minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add give_life trigger
scoreboard objectives add time_left trigger

# Initialize 3rd_main values
scoreboard players set gameStarted 3rd_main 0
scoreboard players set timer 3rd_main 0
scoreboard players set timer_minutes 3rd_main 0
scoreboard players set boogeymanKilled 3rd_main 0
scoreboard players set boogeymanCurrentKills 3rd_main 0
scoreboard players set boogeymanCured 3rd_main 0

# Initialize 3rd_title_shown values
scoreboard players set 1_minute_left 3rd_title_shown 0
scoreboard players set 1 3rd_title_shown 0
scoreboard players set 2 3rd_title_shown 0
scoreboard players set 3 3rd_title_shown 0
scoreboard players set 5_minutes_left 3rd_title_shown 0
scoreboard players set 10_minutes_left 3rd_title_shown 0
scoreboard players set not_the_boogeyman 3rd_title_shown 0
scoreboard players set the_boogeyman 3rd_title_shown 0
scoreboard players set you_are 3rd_title_shown 0

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
team modify 3rd_dead prefix [{"text": "[DEAD] ","color": "gray"}]
team modify 3rd_dead color gray
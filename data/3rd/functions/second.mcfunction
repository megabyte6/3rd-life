schedule function 3rd:second 1s

# Check if boogeyman killed a player in order to show the "boogeyman cured" message
function 3rd:boogeyman/check

# If time is up, check if the boogeyman failed to kill
execute if score gameStarted 3rd_main matches 1 run execute if score timer 3rd_main matches ..0 run execute if score boogeymanKilled 3rd_main matches 0 run execute as @a[tag=3rd_boogeyman] run function 3rd:boogeyman/failed_to_kill

# Show how long the boogeyman has left to kill
execute if score boogeymanCured 3rd_main matches 0 run execute if score timer_minutes 3rd_main matches 10 run execute if score 10_minutes_left 3rd_title_shown matches 0 run function 3rd:custom_title/10_minutes_left
execute if score boogeymanCured 3rd_main matches 0 run execute if score timer_minutes 3rd_main matches 5 run execute if score 5_minutes_left 3rd_title_shown matches 0 run function 3rd:custom_title/5_minutes_left
execute if score boogeymanCured 3rd_main matches 0 run execute if score timer_minutes 3rd_main matches 1 run execute if score 1_minute_left 3rd_title_shown matches 0 run function 3rd:custom_title/1_minute_left

# Update timers
scoreboard players remove timer 3rd_main 1

scoreboard players operation timer_minutes 3rd_main = timer 3rd_main
scoreboard players operation timer_minutes 3rd_main /= seconds_in_a_minute 3rd_constants
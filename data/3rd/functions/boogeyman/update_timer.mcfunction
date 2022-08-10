schedule function 3rd:boogeyman/update_timer 1s

# Check if boogeyman killed a player every second in order to show "boogeyman cured" message
function 3rd:boogeyman/check

# If time is up, check if the boogeyman failed to kill
execute if score timer 3rd_main matches ..0 run execute if score boogeymanKilled 3rd_main matches 0 run function 3rd:boogeyman/failed_to_kill

# Update timers
scoreboard players add timer 3rd_main 1

scoreboard players operation timer_minutes 3rd_main = timer 3rd_main
scoreboard players operation timer_minutes 3rd_main /= seconds_in_a_minute 3rd_constants
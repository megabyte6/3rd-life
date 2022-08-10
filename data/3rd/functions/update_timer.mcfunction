schedule function 3rd:update_timer 1s

# If time is up, check the boogeyman
execute if score timer 3rd_main matches 7200.. run function 3rd:boogeyman/check

scoreboard players add timer 3rd_timer 1
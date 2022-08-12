function 3rd:boogeyman/choose

# Reset timer when choosing boogeyman
scoreboard players operation timer 3rd_main = boogeyman_timer_length 3rd_constants

scoreboard players set gameStarted 3rd_main 1
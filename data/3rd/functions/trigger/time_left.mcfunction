# Check if there is one minute left to correct grammatical errors
execute if score timer_minutes 3rd_main matches 1 run tellraw @s [{"text": "There is ", "color": "gold"}, {"score": {"name": "timer_minutes", "objective": "3rd_main"}, "color": "gold"}, {"text": " minute left.", "color": "gold"}]
execute unless score timer_minutes 3rd_main matches 1 run tellraw @s [{"text": "There are ", "color": "gold"}, {"score": {"name": "timer_minutes", "objective": "3rd_main"}, "color": "gold"}, {"text": " minutes left.", "color": "gold"}]

# Re-enable the trigger command
scoreboard players set @s time_left 0
scoreboard players enable @s time_left
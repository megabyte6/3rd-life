# Re-enable the trigger command
scoreboard players set @s give_life 0
scoreboard players enable @s give_life

# Notify player that they have no lives left to give
tellraw @s {"text": "You can't do that. You have no lives left to give. ☹️", "color": "red"}
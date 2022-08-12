# Re-enable the trigger command
scoreboard players set @s give_life 0
scoreboard players enable @s give_life

scoreboard players add @s 3rd_deaths 1
give @s warped_fungus_on_a_stick{3rd_life:1b} 1
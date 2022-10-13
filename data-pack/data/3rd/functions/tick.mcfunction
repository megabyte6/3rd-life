# Tick
schedule function 3rd:tick 1t

# Make sure that every player has a death score
execute as @a unless score @s 3rd_deaths matches -2147483648..2147483647 run scoreboard players set @s 3rd_deaths 0

# Put each player in a team depending on their deaths
team join 3rd_first @a[scores={3rd_deaths=..0}, team=!3rd_first]
team join 3rd_second @a[scores={3rd_deaths=1}, team=!3rd_second]
team join 3rd_third @a[scores={3rd_deaths=2}, team=!3rd_third]

# Put player in spectator after their third death
gamemode spectator @a[scores={3rd_deaths=3}, team=!3rd_dead]
team join 3rd_dead @a[scores={3rd_deaths=3}, team=!3rd_dead]

# Check trigger commands
execute as @a[scores={give_life=1..}] run execute unless score @s 3rd_deaths matches 2.. run function 3rd:trigger/give_life/give_life
execute as @a[scores={give_life=1..}] run execute if score @s 3rd_deaths matches 2.. run function 3rd:trigger/give_life/give_life_invalid

execute as @a[scores={time_left=1..}] run function 3rd:trigger/time_left

execute as @a[scores={3rd_get_life=1..}, nbt={SelectedItem:{tag:{3rd_life:1b}}}] run function 3rd:trigger/give_life/get_life
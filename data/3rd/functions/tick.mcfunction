# Tick
schedule function 3rd:tick 1t

# Make sure that every player has a death score
execute as @a unless score @s 3rd_death matches -2147483648..2147483647 run scoreboard players set @s 3rd_death 0

# Put each player in a team depending on their deaths
team join 3rd_first @a[scores={3rd_death=0}, team=!3rd_first]
team join 3rd_second @a[scores={3rd_death=1}, team=!3rd_second]
team join 3rd_third @a[scores={3rd_death=2}, team=!3rd_third]

# Put player in spectator after their third death
gamemode spectator @a[scores={3rd_death=3}, team=!3rd_dead]
team join 3rd_dead @a[scores={3rd_death=3}, team=!3rd_dead]
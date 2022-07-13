# Tick
schedule function 3rd:tick 1t

# Make sure that every player has a death score
execute as @a unless score @s 3rd_death matches -2147483648..2147483647 run scoreboard players set @s 3rd_death 0

# Put each player in a team depending on their deaths
team join 3rd_first @a[team=!3rd_first, scores={3rd_death=0}]
team join 3rd_second @a[team=!3rd_second, scores={3rd_death=1}]
team join 3rd_third @a[team=!3rd_third, scores={3rd_death=2}]

# Put player in spectator after their third death
gamemode spectator @a[team=!3rd_dead, scores={3rd_death=3}]
team join 3rd_dead @a[team=!3rd_dead, scores={3rd_death=3}]
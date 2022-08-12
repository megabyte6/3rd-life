scoreboard players set @s 3rd_get_life 0

clear @s minecraft:warped_fungus_on_a_stick{3rd_life:1b} 1

scoreboard players remove @s 3rd_deaths 1
title @s title {"text": "You've gained a life!", "color": "gold"}
particle minecraft:totem_of_undying ~ ~2 ~ 1 1 1 1 500
playsound minecraft:item.totem.use player @s ~ ~ ~
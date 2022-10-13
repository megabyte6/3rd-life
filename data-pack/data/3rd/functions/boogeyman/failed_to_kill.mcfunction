title @s reset
title @s title {"text":"You failed to kill.", "color":"red"}
title @s subtitle {"text":"You will lose one life.", "color":"yellow"}

title @a[tag=!3rd_boogeyman] reset
title @a[tag=!3rd_boogeyman] title {"text": "The boogeyman failed to kill.", "color": "green"}
title @a[tag=!3rd_boogeyman] subtitle {"text": "They will lose one life.", "color": "yellow"}

scoreboard players add @s 3rd_deaths 1
scoreboard players reset @s pl.age
scoreboard players set @s pl.do_birth 1

tellraw @s {"text": "You have died of old age.","color":"gold"}
kill @s
tp -300 70 -200

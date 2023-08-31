
effect give @s minecraft:resistance 30 4 true
tp @s ~ ~200 ~
#execute at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:barrier keep
#execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace

scoreboard players operation @s pl.fam_id = @p pl.fam_id
scoreboard players operation @s pl.parent = @p pl.id
tag @s add family

scoreboard players set @s bf.fam 0
scoreboard players set @s bf.got_fam 0
scoreboard players set @s cd.abs 0
scoreboard players set @s cd.regen 0

scoreboard players reset @s
tag @s remove eve
tag @s remove family

scoreboard players set @s pl.oholian 1
scoreboard players operation @s pl.birth_time = __WORLD world.time
scoreboard players set @s pl.age 0
scoreboard players set @s pl.do_birth 0
execute store result score @s pl.id run scoreboard players add __FAMILY_TOTEM family.player_index 1

# Check for a parent between 20 and 30 years old
execute at @p[scores={pl.age=24000..36000},sort=furthest] run scoreboard players set __TEMP m.mem 1

# If found, become a child of that player
execute if score __TEMP m.mem matches 1 at @p[scores={pl.age=0..36000},sort=furthest] run function vec_ohol:family/iam_family

# Otherwise, become Eve
execute unless score __TEMP m.mem matches 1 run function vec_ohol:family/iam_eve

scoreboard players reset __TEMP


schedule function vec_ohol:tick/ohol2 2

execute at @a[tag=family, nbt={SelectedItem:{id:"minecraft:compass"}}] as @e[type=armor_stand] facing entity @s eyes as @p rotated ~ 0 positioned ^ ^3 ^4 run particle minecraft:composter ~ ~ ~ 0.025 0.025 0.025 0.001 3 normal @s

execute at @a[scores={bf.eve=1}] run particle minecraft:glow ~ ~-0.15 ~ 8.0 0.25 8.0 100 20

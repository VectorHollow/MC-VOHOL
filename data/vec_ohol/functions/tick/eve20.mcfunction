# Update Eve every 20 ticks (1 second)

scoreboard players set @a[nbt={SelectedItem:{tag:{eveheart:1}}}] bf.eve 1

execute as @a[scores={bf.eve=1, bf.got_eve=0}] run function vec_ohol:ohol/eveheart_buff_init

execute as @a[scores={bf.eve=0, bf.got_eve=1}] run function vec_ohol:ohol/eveheart_buff_remove

execute as @a[scores={bf.eve=1, bf.got_eve=1}] run effect give @s minecraft:jump_boost 2 1 true

execute as @a[scores={bf.eve=1, cd.regen=0}] run function vec_ohol:ohol/regen

execute as @a[scores={bf.eve=1}] at @a[distance=0..20, scores={bf.eve=0}] as @p at @a[distance=0..20, scores={bf.eve=1}] if score @s pl.fam_id = @p pl.fam_id run scoreboard players set @s bf.fam 1


scoreboard objectives add world.time dummy
scoreboard objectives add world.tick_time dummy
scoreboard objectives add world.max_age dummy

# Set up the World scoreholder
scoreboard players set __WORLD world.delta_time 0
scoreboard players set __WORLD world.time 0
execute store result score __WORLD world.time run time query gametime
scoreboard players set __WORLD world.max_age 72000
scoreboard players set __WORLD world.hp_buff_cd 180

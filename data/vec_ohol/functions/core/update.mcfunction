# Schedule this function to run itself every 15 seconds
schedule function vec_ohol:core/update 15s

# Update the time
execute store result score __WORLD world.time run time query gametime

# Callback on return login
execute as @a if score @s pl.oholian = @s pl.oholian unless score @s pl.online = @s pl.online run function vec_ohol:player/relog

# Detect logouts
scoreboard players reset * pl.online
scoreboard players set @a pl.online 1


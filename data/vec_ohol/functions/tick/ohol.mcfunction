# Update ohol functions every 15 seconds
# Executor: Server

schedule function vec_ohol:tick/ohol 15s

execute as @a[scores={pl.do_birth=1}] run function vec_ohol:player/rebirth

#function vec_ohol:tick/eve
#function vec_ohol:tick/family

# Kill player if older than 60 minutes
execute as @a if score @s pl.age > __WORLD world.max_age run function vec_ohol:player/age_kill

# Update ohol functions every 20 ticks (1 second)
# Executor: Server

schedule function vec_ohol:tick/ohol20 20

# Age players
execute as @a[scores={pl.oholian=1}] run scoreboard players add @s pl.age 1

# Reset buffs
scoreboard players set @a[scores={bf.eve=1}] bf.eve 0
scoreboard players set @a[scores={bf.fam=1}] bf.fam 0

# Check for eveheart in campfires



# Reduce cooldowns
function vec_ohol:tick/cooldown

# Update eve
function vec_ohol:tick/eve20

# Update family
function vec_ohol:tick/family20

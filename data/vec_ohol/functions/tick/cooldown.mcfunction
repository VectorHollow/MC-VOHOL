# Update all cooldowns every 20 ticks (1 second)

scoreboard players remove @a[scores={cd.abs=1..}] cd.abs 1
scoreboard players remove @a[scores={cd.regen=1..}] cd.regen 1


scoreboard players set @s pl.is_eve 1
scoreboard players set @s bf.eve 0
scoreboard players set @s bf.got_eve 0
scoreboard players set @s cd.regen 0

tag @s remove family
tag @s add eve

execute store result score @s pl.fam_id run scoreboard players add __FAMILY_TOTEM family.fam_index 1

give @s nether_star{HideFlags: 2, AttributeModifiers: [{AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:6.0, Operation:0, UUID:[I; 42853, 1689024593, -201178, -1559272105]}], display: {Name: '{"text":"Eve-heart","color":"#F2AAFF","bold":true,"italic":false}', Lore: ['{"text":"A powerful relic","color":"white","bold":true,"italic":false}', '{"text":"bestowed upon the","color":"#E0DFED","italic":false}', '{"text":"firstborn by the","color":"#E0DFED","italic":false}', '{"text":"spirit of the world.","color":"#E0DFED","italic":false}', '{"text":"\\"You undertake a","color":"#F2AAFF","italic":true}', '{"text":" great challenge.","color":"#F2AAFF","italic":true}', '{"text":"May this power be your", "color":"#F2AAFF","italic":true}', '{"text":"shield from hardship\\"","color":"#F2AAFF","italic":true}']}, eveheart:1b} 1

#give @s minecraft:campfire{CustomName:"\"Family Fire\""} 1
#give @s minecraft:writable_book{display: {Name: '{"text": "Name Registry"}'}} 1 


tellraw @s {"text": "You have been born as Eve."}

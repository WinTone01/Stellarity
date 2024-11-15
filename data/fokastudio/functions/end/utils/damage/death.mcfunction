############################################################
# Kills the player if their health is too low
############################################################

tag @s add foka.dead
tag @s remove foka.tag
tag @s[predicate=fokastudio:end/utils/holding_totem] add foka.tag
scoreboard players reset @s foka.misc
execute store result score @s foka.misc run gamerule showDeathMessages
execute if entity @s[tag=!foka.tag,scores={foka.misc=1}] run gamerule showDeathMessages false
effect give @s[tag=foka.tag] instant_damage 1 100 true
kill @s[tag=!foka.tag]

execute if entity @s[tag=!foka.tag,scores={foka.misc=1},tag=foka.damage.example_cause] run tellraw @a {"translate":"%s died randomly","with":[{"selector":"@s"}]}
execute if entity @s[tag=!foka.tag,scores={foka.misc=1},tag=foka.damage.sharanga_explosion] run tellraw @a {"translate":"%s was ripped apart by %s's Spectral Boom","with":[{"selector":"@s"},{"selector":"@p[predicate=fokastudio:end/items/holding_sharanga]"}]}

execute if entity @s[tag=!foka.tag,scores={foka.misc=1}] run gamerule showDeathMessages true
tag @s remove foka.tag

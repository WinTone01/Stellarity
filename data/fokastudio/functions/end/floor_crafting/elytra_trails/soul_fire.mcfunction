kill @e[tag=foka.altar_of_the_accursed.elytra]
kill @e[tag=foka.altar_of_the_accursed.netherite_ingot]
kill @e[tag=foka.altar_of_the_accursed.soul_fire_feather]

summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:elytra",tag:{foka.trail:"soul_fire",display:{Lore:['{"text":" "}', '{"text":"Imbued with Soul Fire","color":"#00F7FF","italic":false}']}}}}

particle minecraft:soul_fire_flame ~ ~-.4 ~ .2 .2 .2 0.1 25 normal
function fokastudio:end/floor_crafting/particles_base

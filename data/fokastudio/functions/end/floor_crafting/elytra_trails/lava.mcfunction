kill @e[tag=foka.altar_of_the_accursed.elytra]
kill @e[tag=foka.altar_of_the_accursed.netherite_ingot]
kill @e[tag=foka.altar_of_the_accursed.magma_blocks]

summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:elytra",tag:{foka.trail:"lava",display:{Lore:['{"text":" "}', '{"text":"Imbued with Magma","color":"#F36631","italic":false}']}}}}

particle minecraft:lava ~ ~-.4 ~ .2 .2 .2 0.1 25 normal
function fokastudio:end/floor_crafting/particles_base

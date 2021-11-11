#main and off hands
execute store result score @s liee.mainhand run attribute @s minecraft:generic.luck get 10
scoreboard players operation @s liee.offhand = @s liee.mainhand
scoreboard players operation @s liee.mainhand /= #100 liee.main
scoreboard players operation @s liee.offhand %= #100 liee.main

#decrementing luck attribute to remove top 9999 values
execute if score @s liee.mainhand matches 01..33 run function liee:get_effects/dec_hand/01t33
execute if score @s liee.mainhand matches 34..66 run function liee:get_effects/dec_hand/34t66
execute if score @s liee.mainhand matches 67..99 run function liee:get_effects/dec_hand/67t99
execute if score @s liee.offhand matches 01..33 run function liee:get_effects/dec_ohand/01t33
execute if score @s liee.offhand matches 34..66 run function liee:get_effects/dec_ohand/34t66
execute if score @s liee.offhand matches 67..99 run function liee:get_effects/dec_ohand/67t99
attribute @s minecraft:generic.luck modifier add ee-dec-ee-0-0 "error prevention" 0.0000000009 add

#armor slots
execute store result score @s liee.feet run attribute @s minecraft:generic.luck get 1000000000
scoreboard players operation @s liee.legs = @s liee.feet
scoreboard players operation @s liee.feet %= #100 liee.main
scoreboard players operation @s liee.legs /= #100 liee.main
scoreboard players operation @s liee.chest = @s liee.legs
scoreboard players operation @s liee.legs %= #100 liee.main
scoreboard players operation @s liee.chest /= #100 liee.main
scoreboard players operation @s liee.head = @s liee.chest
scoreboard players operation @s liee.chest %= #100 liee.main
scoreboard players operation @s liee.head /= #100 liee.main

#removing modifier attributes
attribute @s minecraft:generic.luck modifier remove ee-dec-ee-0-0
attribute @s minecraft:generic.luck modifier remove ee-dec-ad-0-0
attribute @s minecraft:generic.luck modifier remove ee-dec-1ad-0-0

#revoke advancement
advancement revoke @s only liee:inventory_changed change
scoreboard players reset @s liee.time
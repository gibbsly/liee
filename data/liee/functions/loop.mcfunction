#updating all players mainhand score every tick, this is the only one I cannot detect changing with an advancement
execute as @a[tag=!liee.ignore] store result score @s liee.mainhand run attribute @s minecraft:generic.luck get 0.1

#adding to timestamp scoreboard
scoreboard players add current= liee.time 1


scoreboard players operation mainhand= liee.main = @p liee.mainhand
scoreboard players operation offhand= liee.main = @p liee.offhand
scoreboard players operation head= liee.main = @p liee.head
scoreboard players operation chest= liee.main = @p liee.chest
scoreboard players operation legs= liee.main = @p liee.legs
scoreboard players operation feet= liee.main = @p liee.feet
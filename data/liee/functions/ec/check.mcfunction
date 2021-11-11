scoreboard players operation #t liee.time = @s liee.time
scoreboard players operation #t liee.time -= current= liee.time
execute unless score #t liee.time matches -5..5 run advancement revoke @s only liee:inventory_changed change
#running as players that have had an inventory update
execute as @a[advancements={liee:inventory_changed={change=true}}] if score @s liee.time = current= liee.time run function liee:get_effects
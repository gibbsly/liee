execute as @a[advancements={liee:inventory_changed={change=true}}] run function liee:ec/check
execute if score current= liee.time matches 1.. run schedule function liee:ec 10t
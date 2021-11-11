# Low Impact Equipment Effect Utility 

This is a utility based on a concept by [Moleman/Eris](https://twitter.com/erismakesmaps) that can differentiate unique pieces of equipment without nbt checks.

Generally the use case for this is fairly niche, but the performance gains if used correctly are sizable, even when running constantly [(see modes)](https://github.com/gibbsly/liee#modes) the system is dramatically less intensive than a single nbt check.

## Use 
This pack relies on modifying the luck attributes of items to specify ids, so if you use luck in any capacity then using this isn't advised. 

### Specifying ids
Each slot has a specific range of values that it checks to specify an id. It is formatted as 112.233445566. 

To elaborate, each slot can have 99 unique ids associated with it, to specify an id you take your raw id that you use internally and multiply it by a value.

Range | Slot | formula
--- | --- | ---
1 | mainhand | `id * 10`
2 | offhand | `id * 0.1` 
3 | head | `id * 0.001`
4 | chest | `id * 0.00001`
5 | legs | `id * 0.0000001`
6 | feet | `id * 0.000000001`

So for example an attribute for the chest with an id of `11` would look like: `{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.00011,Operation:0,UUID:[I;2,3,4,5],Slot:"chest"}`.

### Reading ids
This system outputs values to 6 player specific scoreboards. 

> `liee.mainhand` - specifies the id of the item in the player's mainhand
>
> `liee.offhand` - specifies the id of the item in the player's offhand
>
> `liee.head` - specifies the id of the item in the player's head slot
>
> `liee.chest` - specifies the id of the item in the player's chest slot
> 
> `liee.legs` - specifies the id of the item in the player's legs slot
>
> `liee.feet` - specifies the id of the item in the player's feet slot

## Footnotes
### Modes
There are 2 modes that this can run in, that can be changed between by editing the [loop](https://github.com/gibbsly/liee/blob/main/data/liee/functions/loop.mcfunction) and [load](https://github.com/gibbsly/liee/blob/main/data/liee/functions/load.mcfunction) functions. In each there are labeled sections. The default mode is 1, a low impact setting that has the potential to miss an attribute update if a player updates their inventory too quickly. Mode 2 prevents this by constantly updating the players values. The effect mode 2's constant checks has on performance is genuinely marginal (about 0.1 to 0.2 mspt per player). Mode 1 is functional as is, but if you don't mind a minor drop in performance for a gain in accuracy then mode 2 might be better. 
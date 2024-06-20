# Low Impact Equipment Effect Utility 

This is a utility based on a concept by [Moleman/Eris](https://twitter.com/erismakesmaps) that can differentiate unique pieces of equipment without nbt checks.

Generally the use case for this is fairly niche, but the performance gains if used correctly are sizable.

## Use 
This pack relies on modifying the luck attributes of items to specify ids, the functionality of luck should be generally unaffected due to how low the intended range of values is.

### Specifying ids
Each slot has a specific ID of attribute associated with it. This does mean an item in a slot can only have a single id associated with it. 

Id | Slot | ID
--- | --- | --- | ---
1 | mainhand | `liee:mainhand`
2 | offhand | `liee:offhand`
3 | head | `liee:head`
4 | chest | `liee:chest`
5 | legs | `liee:legs`
6 | feet | `liee:feet`

The id of your effect is stored in the `Amount` value of the attribute multiplied by `0.0000001`, so the id `64` would be `0.0000064`. This is so, for most cases, the modification of the luck attribute will be low enough to not affect gameplay in any way.

So for example an attribute for the chest with an id of `11` would look like: `{id:"liee:chest",type:"generic.luck",amount:0.0000011,operation:"add_value",slot:"chest"}`.

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
# Low Impact Equipment Effect Utility 

This is a utility based on a concept by [Moleman/Eris](https://twitter.com/erismakesmaps) that can differentiate unique pieces of equipment without nbt checks.

Generally the use case for this is fairly niche, but the performance gains if used correctly are sizable.

## Use 
This pack relies on modifying the luck attributes of items to specify ids, the functionality of luck should be generally unaffected due to how low the intended range of values is.

### Specifying ids
Each slot has a specific UUID of attribute associated with it. This does mean an item in a slot can only have a single id associated with it. 

Id | Slot | UUID (array) | UUID (string)
--- | --- | --- | ---
1 | mainhand | `[I;4590,0,0,1]` | `11ee-0-0-0-1`
2 | offhand | `[I;4590,0,0,2]` | `11ee-0-0-0-2`
3 | head | `[I;4590,0,0,3]` | `11ee-0-0-0-3`
4 | chest | `[I;4590,0,0,4]` | `11ee-0-0-0-4`
5 | legs | `[I;4590,0,0,5]` | `11ee-0-0-0-5`
6 | feet | `[I;4590,0,0,6]` | `11ee-0-0-0-6`

The id of your effect is stored in the `Amount` value of the attribute multiplied by `0.0000001`, so the id `64` would be `0.0000064`. This is so, for most cases, the modification of the luck attribute will be low enough to not affect gameplay in any way.

So for example an attribute for the chest with an id of `11` would look like: `{AttributeName:"generic.luck",Name:"generic.luck",Amount:0.0000011,Operation:0,UUID:[I;4590,0,0,4],Slot:"chest"}`.

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
Types
=====

https://en.wikipedia.org/wiki/Algebraic_data_type


Product type
------------
https://en.wikipedia.org/wiki/Product_type

eg
	struct
	record
	tuple


Union type
----------
https://en.wikipedia.org/wiki/Union_type

Different types in the same area of memory
Not as useful as a tagged union



Tagged union
------------
https://en.wikipedia.org/wiki/Tagged_union

> variant, variant record, choice type, discriminated union, disjoint union, sum type, or coproduct

	in rust an enum (misnomer)

Enums
-----
https://en.wikipedia.org/wiki/Enumerated_type
A variable with a fixed set of possible values

```
enum CardSuit
{
    case Hearts;
    case Diamonds;
    case Clubs;
    case Spades;
}
```
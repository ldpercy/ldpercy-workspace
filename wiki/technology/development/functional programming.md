Functional Programming
======================



Functional Design Patterns - Scott Wlaschin
-------------------------------------------

https://www.youtube.com/watch?v=srQt1NAHYC0



03:19 FP Design Patterns
06:13 Core FP Principles
06:50   Functions are things
11:45   Types are sets
20:50 Functions as Parameters
29:30 *Every function is one parameter

16:58 Exceptions in Functional Land
40:47   Chaining functions instead of if-else
43:07 Monad
44:06   Bind mis-match functions

49:40 Map (*Mappable types r functors)
53:06 Monoids (Things with 3 rules)


Some patterns are built-in depending on the language

### Core Principles of Functional Programming

* functions are things
* composition everywhere
* types are not classes

types ~= sets
algebraic type system
only two ways to combine types AND and OR

Design principle: design for totality

	types as documentation
	constrain the input			NonZeroInteger
	constrain the output		Option<integer>

Design principle: use static types for domain modelling and documentation

### Functions as Parameters

Guideline: Parameterize all the things

	f# fold
	collection functions

Tip: function types are interfaces

	tend not to use Interfaces, as the function signature is the interface

strategy pattern is achieved by just passing the strategy in as a parameter

decorator pattern 27:30
	eg logging wrapper with same interface
	functional way is to compose the functions rather than have a sinlge wrapper
	log >> isEven >> log

Composition patterns only work for functions with one parameter  (???)
Everything has one parameter?
	I think this relies on closures - need to try this in js
	I think the meaning of 'one parameter' here could be a bit arbitrary - not sure

#### Partial application
Pattern: Use partial application when working with lists

	|> is an f# pipe operator

Pattern: Use partial application to do dependency injection
	persistance ignorance
	eg inject database connection by partial application

	makes for lightweight interface, but feels like it would be memory heavy
	on the other hand no frameworks needed so savings there

Pattern: Continuations aka The Hollywood Principle "don't call us we'll call you"

	Fine with not throwing exceptions, but the continuations I really don't like....
	The caller should be in control, but OUTSIDE of the function...
	Also the trade off here is that we need to create lots of little temporary functions that have been partially applied.
	This is fine in as much as functions are first class, though I doubt they're more memory light or cheaper on cpu. A few simple vars would be better?

	I'm not really convinced this is necessarily more flexible, though it might be _terser_ in cases where you need to reuse a given behaviour a lot.

Pattern: Chaining callbacks with continuations

	(I doubt I'm going to like this either...)
	eh I guess it's not too bad, but it _hides_ the nested ifs rather than do away with them

	this is an example of a monad, aka chaining continuations

### Monads

44:12 composition of multi input functions

How to combine mismatched function inputs/outputs? Bind

Pattern: Use bind to chain options

	monadic bind

Pattern: use bind to chain error handlers

	"Railway Oriented Programming"

	If each fork throws the same type of error then the final handler can return the specfics of the actual error that occurred.

	https://fsharpforfunandprofit.com/rop/
	https://www.youtube.com/watch?v=fYo3LN9Vf_M

### Maps

Lifting with map - world of options, lists, async

Guideline: Most wrapped generic types have a 'map'

Mappable types are 'functors' in functional programming

### Monoids

Monoid Rules:
1. Closure	- combinations return the same type
	- pairwise operations can work on lists - called "reduce", eg List.reduce(operation)
2. Associativity	- combination grouping order doesn't matter
	- order doesn't matter so can do divide and conquer, parallelisation, incremental accumulation
3. Identity/unit/zero element	- there exists a thing that when combined gives the original thing back
	- an initial value for empty or missing data
	- if Identity missing it is called a semigroup

Pattern: Simplifying aggregation of code with monoids
	write a pairwise operator
	reduce the list

Pattern: convert non-monoids to monoids
	map non-monoids to monoids, then reduce

	Hadoop make me a sandwich

Guideline: Convert expensive monoids to cheap monoids

	eg covert large strings to smaller ones for easier concatenation

	"Monoid homomorphism"

Pattern: seeing monoids everywhere
	use counters rather than rates
	makre sure your metrics are monoids

Endomorphisms: functions with the same input as output

Monoids Vs Monads

https://fsharpforfunandprofit.com/fppatterns
https://github.com/swlaschin

### Scott Wlaschin — Railway oriented programming

https://www.youtube.com/watch?v=fYo3LN9Vf_M
https://github.com/swlaschin/RailwayOrientedProgramming

* function composition
* function as parameter - aka strategy pattern
* function transformer

Composition can be done by creating a new function or piping - the latter is similar to method chaining

Convert exceptions to failures - don't use exceptions for control flow
Railway transformations: https://youtu.be/fYo3LN9Vf_M?t=3161
Closures
========

https://en.wikipedia.org/wiki/Closure_(computer_programming)


https://en.wikipedia.org/wiki/Free_variables_and_bound_variables

https://en.wikipedia.org/wiki/Non-local_variable





Grumble
-------

I've never been a fan of closures, they always seemed weird to me.
Like a sort of secret hidden state that wan't obvious.
They seem to break the normal understanding of a function, ie something that maps inputs to outputs.
Closures don't work like that - they're not deterministic.
Also not idempotent.

So in part this appears to fall under a general pattern in computer science where functions are a larger category than functions in mathematics.
For example procedures that have side effects, aren't idempotent, aren't deterministic are usually just casually called functions in CS.
In some sort of ideal world (silver haha) I'd name them differently to make the distinction clearer.

### function
strictly maps inputs to outputs, idempotent, deterministic, no side effects, pure

###	procedure
any sort of computation, can be used for anything, can have side effects, might produce different output at different times, etc

### lambda
Anything without a 'proper' name, could probably be either a function or a procedure, but functions would be preferable I think.  Anonymous procedures would be weird, but might be useful in some circumstances

### closure
I think these have to become another category? They're no longer strictly functions under the definition I'm using, so maybe they're procedures?







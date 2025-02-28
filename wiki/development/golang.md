Golang
======

Basics
------

* Go is pass-by-value
* Pass by value (non-pointer):			string int float boolean array struct
* Pass by reference (pointer-wrapper):	slice map function
* Arrays are fixed length, slices are variable length
* Map keys and values must all be of the same type



Rob Pike
--------

### Go Proverbs with Rob Pike

https://www.youtube.com/watch?v=PAAkCSZUG1c

* Don't communicate by sharing memory, share memory by communicating.
* Concurrency is not parallelism.
* Channels orchestrate; mutexes serialize.
* The bigger the interface, the weaker the abstraction.
* Make the zero value useful.
* interface{} says nothing.
* Gofmt's style is no one's favorite, yet gofmt is everyone's favorite.
* A little copying is better than a little dependency.
* Syscall must always be guarded with build tags.
* Cgo must always be guarded with build tags.
* Cgo is not Go.
* With the unsafe package there are no guarantees.
* Clear is better than clever.
* Reflection is never clear.
* Errors are values.
* Don't just check errors, handle them gracefully.
* Design the architecture, name the components, document the details.
* Documentation is for users.


### What We Got Right, What We Got Wrong | GopherConAU 2023

https://www.youtube.com/watch?v=yE5Tpp2BSGw

Done right
	started with formal spec
	multiple compilers
	portability
	compatibility guarantee
	library
	tools
	gofmt

Concurrency
	async await
	coloured functions
	https://en.wikipedia.org/wiki/Communicating_sequential_processes

	concurrency vs parallelism
	https://www.youtube.com/watch?v=oV9rvDllKEg

Interfaces
	sort.Interface len less swap
	empty writer reader
	maps slices arrays channels
	late introduction of generics
	actually parametric polymorphism

The compiler
	done in c
	llvm

Project management
	quality first
	svn-perforce-hg-git

Package management
	splash talk
	plain string for import stmt

Documentation
	even simple examples
	go playground

Q&A
	telemetry opt-in
	exceptions
	no Go 2
	Wish: Integers being aribtrary precision from the start (no integer overflow)   !!!!!!
	https://en.wikipedia.org/wiki/APL_(programming_language)

	stdlib
		syslog is garbage
		os.out should have interfaces not files

	memory arenas



### Concurrency is not Parallelism by Rob Pike

https://www.youtube.com/watch?v=oV9rvDllKEg

https://go.dev/talks/2012/waza.slide#1

concurrent: computer io devices, eg keyboard mouse display
parallel: vector dot product

CAR (Tony) Hoare - Communicating sequential processes 1978

Concurrent composition/decomposition

Goroutines
	channels
	select
	closures

Concurrency is not parallelism.
Concurrency enables parallelism.
Concurrency makes parallelism (and scaling and everything else) easy.



Learning
--------

Go Tutorial (Golang) for Beginners
https://www.youtube.com/watch?v=etSN4X_fCnM&list=PL4cUxeGkcC9gC88BEo9czgyS72A3doDeM


Frameworks
----------

### API
Gin
Gorilla/Mux
Echo
Fibre
Kit

### Testing
Testify
GoConvey


Arrays and Slices
-----------------

https://www.youtube.com/watch?v=Arb-LjPg7FA


Arrays are fixed length, slices are variable.
0 based

### Array

Arrays are fixed length once declared.

	var arrayName [size]arrayType = [size]arrayType{item1, item2, ...}

Or with type inference:

	var arrayName = [size]arrayType{item1, item2, ...}

Shorthand:

	arrayName := [size]arrayType{item1, item2, ...}


### Slice

Slices are variable length (use array type under the hood).


	var sliceName = []sliceType{item1, item2, ...}

Syntactic difference is the absence of number for size.

Can be appended to with:

	append(sliceName, value)

This creates a new slice, so to overwrite the old one:

	sliceName = append(sliceName, value)

### Slice ranges

	range := sliceName[start:end]	// start <= range < end

Open ended range:

	range := sliceName[start:]		// everything from start to end of array

Open start range

	range := sliceName[:end]			// everything before end


Ranges are slices and can be appended to:

	append(range, value)



Maps
----

https://www.youtube.com/watch?v=v3RodjH1i6c&list=PL4cUxeGkcC9gC88BEo9czgyS72A3doDeM&index=12

key:value pairs

All keys must be same type
All values must have same type

	mapName := map[keyType]valueType{
		key1: value1,
		key2: value2,
		...
	}

Reference an element:

	mapName[key]				// integer key
	mapName["stringKey"]

Looping:

	for k, v := range mapName {
		fmt.PrintLn(k, "-", v)
	}

Mutate:

	mapName[key]	= newValue


Pass by value
-------------

https://www.youtube.com/watch?v=LBLN4Wu5U4w&list=PL4cUxeGkcC9gC88BEo9czgyS72A3doDeM&index=13

Group A: Non-pointer values
	string
	int
	float
	boolean
	array
	struct

	These are pass-by-value

	Pointers themselves are probably in this group

Group B: Pointer-wrapper values
	slice
	map
	function

	These effectively get passed by reference



Strings
-------

	Print etc 		write to stdout

	Fprint, Fscan etc	print or read from readers/writers

	Sprint, etc	write to string



Pointers
--------

Pointer to variable:

	valueName := "foobar"

	myPointer := &valueName 			// is pointer to valueName

	// 0x0123456789ab

Dereference pointer to get underlying value at its memory address:

	underlyingValue := *myPointer

Function that accepts a pointer:

	func updateValue(p *valueType) {
		*p := someNewValue
	}

(This explicit pointer syntax is implicit for pointer-wrapper types.)


Structs
-------

Declaration of type struct:

	type structName struct {
		name1 type1
		name2 type2
		...
	}

Create instance of struct:

	myStruct := structType{
		name1: "foo",
		name2: "bar",
		...
	}



Interfaces
----------

Declaration of interface:

	type interfaceName interface {
		method1() method1Type
		method2() method2Type
	}

Afaict structs don't need to be explicitly included into interfaces, ti looks like they're duck-typed, as in if it fulfills the interface, its good to go.



Composition (over inheritance)
------------------------------

	type composedStruct {
		localName1	otherStruct1
		localName2	otherStruct2
		localName3	otherStruct3
	}



Defer, Panic, and Recover
-------------------------

https://go.dev/blog/defer-panic-and-recover
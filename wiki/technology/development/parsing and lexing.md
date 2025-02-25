Parsing and Lexing
==================

https://en.wikipedia.org/wiki/Parsing

https://en.wikipedia.org/wiki/Abstract_syntax_tree
https://en.wikipedia.org/wiki/Context-free_grammar
https://en.wikipedia.org/wiki/Compiler-compiler


### Conjecture:

> Something that is easy to read will be easy to parse
> Something that is easy to parse will be easy to read


Types
-----

	https://en.wikipedia.org/wiki/Top-down_parsing
		https://en.wikipedia.org/wiki/Recursive_descent_parser
		https://en.wikipedia.org/wiki/LL_parser

		Definite clause grammar parsers
		Recursive descent parser
		Predictive parser
		Earley parser


	https://en.wikipedia.org/wiki/Bottom-up_parsing

		Precedence parser
			Simple precedence parser
			Operator-precedence parser
		Bounded-context parser (BC)
		LR parser (Left-to-right, Rightmost derivation in reverse)
			Simple LR parser (SLR)
			LALR parser (Look-Ahead)
			Canonical LR parser (LR(1))
			GLR parser (Generalized)[3]
		CYK parser (Cocke–Younger–Kasami)
		Recursive ascent parser
		Shift-reduce parser


Refs
-----
https://www.perl.com/pub/2012/10/an-overview-of-lexing-and-parsing.html/
https://www.reddit.com/r/ProgrammingLanguages/comments/gdt3xd/why_lexing_and_parsing_should_be_separate/
https://github.com/oilshell/oil/wiki/Why-Lexing-and-Parsing-Should-Be-Separate
https://stackoverflow.com/questions/2842809/lexers-vs-parsers






Building a Parser from scratch - Dmitry Soshnikov
-------------------------------------------------

https://www.youtube.com/@DmitrySoshnikov-education/videos


Only 123+7 are on yt


### Lecture [1/18]: Tokenizer | Parser

https://www.youtube.com/watch?v=4m7ubrdbWQU

Tokenizer = Lexer = Scanner


Tokenizer
	converts string to tokens
	doesn't make any judgment whether program is syntactically valid

Parser
	for syntactic analysis
	validation
	produces Abstract Syntax Tree (AST)
	operators or function names (equals, plus, multiply etc)  as root nodes
		has left and right
	AST passsed to code generator


Parsing
	regexes don't work for parsing
	regexes used only for tokenzier module
	uses BNF

Types of parsers:

	Hand written:
		Recursive descent

	Automatically generated
		LL
		LR
		GLR
		PEG

	Top-down
	Bottom-up


AST = parse(string)


	function NumericLiteral(string) {
		return AST(string)
	}


### Lecture [2/18]: Numbers | Strings

https://www.youtube.com/watch?v=0ZDPvdp2uFk


Each AST node will have a type

Tokeniser

	string
	cursor

	hasMoreTokens
	getNextToken

	works as a state machine

Parser requires tokeniser

Lookahead
	recursive descent is a predictive parser
	prime the tokenizer based on the first token

AST:
	type: program
	body:
		type: stringliteral
		value: hello


### Lecture [3/18]: From State Machines to Regular

https://www.youtube.com/watch?v=nexKgX2d7wU

Using regex instead

Increase cursor to length of matched token

Tokenizer specification - set of regex rules mapped to token types

	pattern1 -> tokenType1
	pattern2 -> tokenType2
	...

Try each regex in turn at the cursor looking for a match.
If no match return unexpected token error at cursor point

Single line and multiline comments

Specification based tokenizer

### Lecture [7/18]: Binary Expressions

https://www.youtube.com/watch?v=W9BTq_L6ut4

Mathematical binary operations, inluding precedence

Tests:
	block
	empty statements
	literals
	math
	statement list

test(expression,result)
	for these tests the results are AST structure outputs

inside the AST do not see parenthses, but the correct precedence
	deeper items have higher precedence, ie need to be evaluated first




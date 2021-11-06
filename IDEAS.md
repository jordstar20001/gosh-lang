GOSH will be extremely simple.
How so?
- It will feature English-like statements, while providing versatility.

How does this work?
- yacc and lex

How does data get stored and retreived? *Similar to how Python works*:
- 3 large hash tables:
+ Classes - Size, instances, offsets etc
+ Instance - reference to class / type, place in memory
+ Variable - reference to instances

create number called x = 1 -> 00110001100101
add 1 to x -> 0x7fffd7d06604 -> x + 1 -> 
# Written Assessment Preparation

Assessment Format:

- around 20 questions for 3 hours; time management 

- format answers to markdown

  - split answers into paragraphs (easier to read)

  - example: one line `1`, we initialize variable `str` to a string `"Hello"`.

  - ```ruby
    this will be multi line codes
    ```

Interview Assessment:

- codewards, 5/6 kye level easier 5 and more difficult 6
- 1 hour for two questions

## Preparation To-dos

- [ ] a method call on object ? invoke a method on variable?

- [ ] call on? passing in as an argument

- [ ] `if`

- [ ] Interpolation isn't a method, no. However, it does make use of the `to_s` method for whatever value is between the braces.

- [ ] going through katas

- [ ] Within the block, we use string interpolation to input each element to the string object. 

- [ ]  hash[value] = ke

  

## Language Precision

- **print out** the **return value** of the **method invocation**

- initialized

  - variable `a` is initialized to a string object with value `'hello'`
  - a local variable `b`  is initialized to the string object that the local variable `a` is referencing

- reassignment

  - we then reassign the local variable `a` to reference a different string object with a different value `'goodbye'`

- `loop`

  - `loop` method is called and block `do..end` following it is passed in as an argument. The block following the method invocation defines a new inner scope. 

- `puts`

  - method `puts` is called and local variable `a` is passed to it as an argument.
  - the code outputs the value of variable `a` which is `3` since we reassigned it on line 6 

- `times`

  - `times`method is called on integer `2` and `do..end`block is passed to it as an argument with one parameter `a`

- parameter

  - we then assign integer `5` to the local variable `a` passed in as a parameter of the `do..end`block 

- `.upcase`

  - calling method `upcase` on object which local variable `a` is referencing

- Integers and symbols in Ruby with same values occupy the same physical space in memory

- `+`

  - the method `+` is called on the `counter` local variable passing in `1` as an argument 
  - counter.+=(1)

- `until`

  - until keyword evaluates the conditional expression based on its truthiness, it will keeps looping until it evaluates to true 
  - the `until` keyword loops the lines 15-16 `until` the conditional xx evaluates to `true`

- `break`

  - we are breaking out of the loop by keyword `break` if the value of the object that local variable `i` is referencing is equal to 0

- `pass by reference value`

  This is an example of Ruby's unique pass by reference value, in that a copy of the object's reference is made available and worked within the method definition. If the original object is mutable it can be altered, but only if it's still referenced by the parameter it was assigned to during invocation.
  
- `each`

  - method `each` is being called on array, and `do...end` block is passed to it as an argument with a parameter `num`. The method then iterates through `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, passing value of each current element as `n` to the block as an argument and runs the block. 
  - the return value is the original collection `[1, 2, 3]`

- `map`

  - it returns a new array object populated with the return values of the block in each iteration 
  - The `map`method iterates through the array object `["jump", "trip", "laugh", "run", "talk"]` passing value of each current element as `word` to the block as an argument and runs the block. It takes the return value of the block on each iteration and moves it into a new array. when it finishes, it returns that new array.

- `select`

  - iterates through the array object passing each value of the current element as `num` to the block as an argument and runs the block.`select` evaluates the return value of the block on each iteration. if that return value evaluates to`true`(in ruby it means not `nil` or `false`) add the value of the current element to a new array. 

- `interpolation`

  - Within the block, we use string interpolation to input each element to the string object.

- `sort`

  - The `Array#sort` method sorts items by using comparison. Without any optional blocks passed in, the comparison is carried out using the appropriate comparison method for the item type, in this case the `String#<=>` method. The strings are compared character by character according to ASCII position. Longer strings are considered greater if the strings are equal when compared up to the shortest length.
  - the sort method is called on array object `xx`. The `sort` method compares arrays in element-wise manner thus the first object of each array will be compared together. Without any optional blocks passed in, the comparison is carried out using the appropriate comparison method for the item type, in this case the `String#<=>` method. The strings are compared character by character according to ASCII position. Longer strings are considered greater if the strings are equal when compared up to the shortest length.['b', 2] will come last in all sub-arrays since `'b'` comes after `'a'` in ASCII positions. Integer `2` will not be compared again since once the sequential order is established, the rest of the elements will be ignored in comparisons. Similarly, the rest of the elements will be compared where string will be compared character by character and integer vs string comparisons are coincidentally ignored. 



```ruby
# Concepts
#interpolation

# Vocabulary
#   Variable Types
#   Local
#   Const
#   Global
#   Initialized
#   Assigned
#   Invoked
#   Argument
#   Parameter
#   Outputs
#   Returns
#   Evaluates
#   Element Reference
#   Reassignment
#   Indexed Reassignment
#   Index assignment
#   Demonstrates
```



## Topics of Interest

### Syntactical Sugar

```ruby
str = 'hi'

def str
    'bye'
end

p str
```





### Truthiness - false vs nil (lesson 6, 2)

Usually the notion of whether a value is `true` or `false` is captured in a boolean data type. Boolean is an object whose only purpose is to convey whether it is `true` or `false`. it's represented by the `true` or `false` objects.

Ruby considers everything to be truthy other than false and nil

In conditionals, whatever the expression, it should <u>evaluate</u> to `true` or `false`

It returns `true` when preceded with a `!!`.

if method_call is used as a conditional expression, it should return a truthy or falsey value or a boolean 

any expression in a conditional or with logical operators, as long as it doesn't evaluate to false or nil, it is considered true.

Example 1:

```ruby
if true
  puts 'hi'
else
  puts 'goodbye'
end 
```


On lines `21-25` we use the `if/else` keywords to create a control expression.
On line `21` we evaluate the conditional expression `true` to determine which branch should execute.
Since the test expression is a boolean `true` this evaluates to true and the code within that branch will execute. 
On line `22` we invoke the `puts` method with a string object argument `"hi"`, this outputs `hi` and returns `nil` since `puts` always returns `nil`.
All other branches are ignored.
This demonstrates the flow of an `if` control expression, and if the test expression evaluates to true, that branch of code will run and ignore all other branches.
This also demonstrates the concept of truthiness, in ruby all objects are considered truthy other than  `false` and `nil`.
=end

Example 2:

```ruby
num = 5

if (num < 10)
  puts 'small number'
else 
  puts 'large number'
end 
```



Example 3:

```ruby
a = "Hello"
if a
 puts "Hello is truthy"
else
 puts "Hello is falsey"
end
```

The code outputs "Hello is truthy" due to the concept of truthiness. In Ruby, every value in ruby is evaluated to `true` in a boolean context other than `false` or `nil`. Thus, any expression is considered true if it doesn't evaluate to `false` or `nil`. 

On line 1, variable `a` is initialized and assigned to `"Hello"`. On line 2, `"Hello"` the string object that `a` points to is being evaluated in the conditional `if`, and it is evaluated to be true. Thus, line 3 is run and outputs `"Hello" is truthy"`

Example 4:

```ruby
def my_method
    puts "Written assessment"
end

some_var = my_method

if some_var
    puts "written assessment"
else
    puts "interview"
end 
```

The code should output `"written assessment" first and then "interview". 

Variable `some_var` is initialized and assigned to the return value of method `my_method`. `my_method` is called during that process. Inside the method, the puts method is invoked on string `"written assessment"` which outputs the string and returns `nil`. Thus `some_var` is assigned to object `nil`.

in conditional if, `some_var` which points to object `nil` is evaluated to nil, so `puts "interview"` is run. 

This demonstrates the concept of truthiness, where ruby considers everything that's not `false` or `nil` to be true.

### Local Variable Scope (lesson 6, 18,19)

a variable's scope determines where in a program a variable is available for use. It's defined by where the variable is initialized.

In Ruby it's defined by a block (a piece of code following a method invocation {} or do/end)

- available to the inner scope created by `3.times do ... end`, which allowed the code to reassign variable `a` to a different object 
- variable `b` is not available outside of the scope created by the method invocation with a block where it is initialized. when `b` is called, it is not available within that outer scope
- for is not a method invocation 
- The block following the method invocation is actually an argument passed into the method

Example 1:

```ruby
x = 0
3.times do 
  x += 1 
end 
puts x 
```

It demonstrates that inner scope can access outer scope variables, and you can change variables from an inner scope and have that change affect the outer scope

Example 2:

```ruby 
y = 0
3.times do 
  y += 1 
  x = y
end 
puts x 
```

Example 3:

```ruby
animal = "dog"

loop do 
    animal = "cat"
    var = "rainbow"
    break
end

puts animal
puts var
```

The code outputs `"cat"` first and then raises an error because of the concept of variable scopes.

variable `animal` is initialized on line `1` to `"dog"`. The block that follows `loop` method invocation creates a new inner scope. The outer scope can be accessed by the inner scope but not vice versa. Thus variable `animal` is accessed and it was allowed to be reassigned by the code in the block to `"cat"`

However, variable `"var"` is initialized in the inner scope and unable to be accessed by the outer scope. 

Thus line 10 raises an error.



Example 4:

```ruby
2.times do 
  a = 'hi'
  puts a
end

loop do 
  puts a 
  break 
end

puts a 
```

Executing the two `puts a` will raise an error because the variable `a` is initialized in the block following the `times` method invocation and is limited to the inner scope created by that block.

Peer blocks cannot reference variables initialized in other blocks. We can use the same variable name `a` in the block of code that follows `loop` method invocation. but it won't be the same variable

Example 5:

```ruby
def some_method(number)
  number = 7
end 

a = 5
some_method(a)
puts a 
```

`a` is passed as an argument to the `some_method` method. In `some_method`, the value of a is assigned to the local variable `number`, which is scoped at the method definition level. 'number' is reassigned to `7`. Thus variable`a` in the outer scope is unaffected by local variable `number` 's reassignment. 

### Variable Shadowing (lesson2, 18)

some blocks take a parameter

such as each, the block parameter represents each element as the `each` method iterates through the calling object. 

It prevents access to the outer scope local variable and making changes to it.

Example 1:

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n 
```



Example 2:

```ruby
animal = "dog"

loop do |animal|
	animal = "cat"
	break
end
puts animal 
```

The code outputs `"dog"` because of the concept of variable shadowing.

variable `animal` is initialized to be `"dog"`. The block following method invocation `loop` creates an inner scope and within that initiates a block parameter `animal` to be `nil`, and it is treated as a local variable. From then on, all the codes in the block refer to the local variable `animal`which is `nil` instead of the outer variable.

 Thus, variable animal in the outer scope which was output at the end is still pointing to `"dog"`

```ruby
def test(str)
	str += '!!!'
	str.upcase!
end

test_str = "Something"
test(test_str)

puts test_str
```

The code will output "Something". 

on line 6 we initialized variable `test_str` 

call method test and pass `test_str` as an argument to the method

`str` variable and `test_str` variable now point to the same string object 

on line `2` we reassign `str` variable to point to a different string object 

from now on, `str` and `test_str` variables no longer point to the same string object, so it is no longer possible to mutate the object `test_str` variable point to 

*we can't call methods on variables and we can't mutate variables

*we can mutate the objects that variables point to 

The code outputs the string object `"Something"`. This is because on line 53 local variable `test_str` is assigned to `"Something"`. On line 54 `test` is invoked passing in `test_str` but the return value isn't assigned to a local variable in the main scope. So on line 56 `test_str` is still referencing `"Something"`. 

In method scope `test` the local variable str is reassigned on the line 49 to `"Something!!!". On line 50 `str` is passed in as an argument to `upcase!` which mutates the variable in memory to `"SOMETHING!!!". Line 54 doesn't do anything with the `"SOMETHING!!!"` return value. This demonstrates variable scope because although `test` does create a new `str` variable it isn't accessable in the main scope and line 54 doesn't create a main scope variable for the return value.

### Method Invocation vs definition ( and their scopes) same^

definition:

has no notion of "outer" or "inner scope". It's entirely self-contained. Parameters are used when you have data outside of a method definition's scope, but you need access to it within the method definition.

When we pass outside data into the method definition, they are assigned to the local variable `parameter`. 

ie. we pass `"hello"` into the `method` as an argument, assigned to the method parameter `words` and made available to the whole method body as a local variable. Then the code within the method definition is executed with the `words` local variable pointing to the same string object `"hello"` as the outside variable. 

definitions are code procedures that extract the common code to one place. It is defined with `def` and `end`. 

Invocation:

call or invoke method that's custom or existing

some_method(obj) is when you send arguments to a method call;

caller.some_method(obj), methods are called with an explicit caller

method invocation with a block

Method definitions *cannot* directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within it. A block *can* access local variables initialized outside of the block and can reassign those variables.

- Method definition *sets* a scope for local variables in terms of parameters and interaction with blocks
- Method invocation *uses* the scope set by the method definition
- method definition interaction with blocks
- https://launchschool.com/lessons/3ce27abc/assignments/cd8e4629

```ruby
def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end
```



### Constants

They can be accessed regardless to where they are initialized.

### Method Mutation

some methods mutate the caller

### Return vs Put

every method/block returns the evaluated result of the last line that is executed

```ruby
def add_three(number)
    number + 3
end

returned_value = add_three(4)
puts returned_value
```

we assign variable `returned_value` to the returned value of the `add_three` method invocation.

```ruby
def just_assignment(number)
  foo = number + 3
end
just_assignment(2)
```

method just_assignment is called with 2 passed into it as an argument. 2 is assigned to the method parameter `number` and made available to the whole method body as a local variable. variable `foo` is initialized within the definition scope to be the value of `number +3 ` which is 5. Because the assignment expression evaluates to `5` and every method returns the evaluated result of last line executed (unless `return` is used). Thus `just_assignment(2)` returns `5`

### Variables as Pointers

variables point to space in memory

some operations mutate the address space in memory but others simply change the variable to point to a different address space

Example 1

```ruby
a = "hi there"
b = a 
a = "not here"
```

code reassigned a to a different address in memory which holds a different value.

```ruby
a = 'Hello'
b = a
a = 'Goodbye'
```

a and b are not pointing to the same object. On line 1 Local variable a is assigned to the string object 'Hello'. On line 2 local variable b gets assigned to the same string object 'Hello'. On line 3 a gets reassigned to a new string object 'Goodbye' while b is still referencing the original string object 'Hello'. This code demonstrates variables as pointers to physical spaces in memory.

### Array sort

setting the order of the items in a collection according to a certain criterion

```ruby
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end
```

`sort` - return new array with the integers ordered sequentially according to their value. it's carried out by comparing the items in a collection with each other and ordering them based on the result of that comparison

`<=>` performs comparison between two objects of the same type. Its return value is used by `sort` to determine the order in which to place the items

[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

#.sort compares each sub array element by element and only references the elements in the sub array's long enough to find a sequencial order or run into an error. In this case although the sub_arrays have different objects that can't be compared the .sort method never needs to reference those objects in a comparison. 
the sort method is called on array object `xx`. The `sort` method compares arrays in element-wise manner thus the first object of each array will be compared together. Thus, ['b', 2] will come last in all sub-arrays since `'b'` comes after `'a'`. Integer `2` will not be compared again since once the sequential order is established, the rest of the elements will be ignored in comparisons. Similarly, the rest of the elements will be compared where string will be compared character by character and integer vs string comparisons are coincidentally ignored. 

'b'.ord

```ruby
[2, 5, 3, 4, 1].sort do |a, b|
  a <=> b
end
# => [1, 2, 3, 4, 5]
```

`String#<=>` compares multi-character strings character by character, so the strings beginning with `'a'` will come before those beginning with `'b'`; if both characters are the same then the next characters in the strings are compared, and so on.

`sort_by`

```ruby
['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
#hash
people.sort_by do |_, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
```

### Mutability 

a method that does not modify its arguments or caller is non-mutating with respect to those objects

```ruby
a = 5.3
b = 7.3
a = b
b += 1.1
puts a 
puts b
```

setter method a method defined by a Ruby object that allows you to explicitly change the value of part of an object

indexed assignment  and concatenation mutates the object

```ruby
>> a[1] = '-'    # calls `Array#[]=` setter method
=> "-" 
```

 collection classes behave in the way that variables reference the collection and the collection contains references to the actual objects in the collection

#### Example 1

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

they should both output `"HELLO!"` because variables are just references to objects and the objects can be changed if passed into mutating methods

variable `s` is initiated and assigned to `"hello"`. variable `t` is initiated and assigned to the return value of `fix(s)`. Thus method `fix(s)` is called and `"hello"` is passed to the method as an argument in place of the method parameter. The method parameter `value` is assigned to `"hello"` and made available to the whole method body as a local variable. `value` and `s` are not referring to the same string object.  `upcase!` and `concat` are called on `value` and both modified `"hello"`. At last `value` is returned while pointing to `"HELLO!"`, and `t` is assigned to the same string `"HELLO!"`. 

Since `t` and `s` are referring to the same string object they will both output `"HELLO!"`

#### Example2

```ruby 
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

the local variable `t` is assigned to `"HELLO!"` while `s` is binded to `"hello"`. Because the function of reassignment does not modify the actual object. 

when `s` is passed as an argument to `fix()`, method parameter `value` is assigned to `"hello"` and made available as a local variable in the method body. `s` and `value` point to the same string object.

However, next we assign the return value of `value.upcase` back to value. `upcase` creates a new copy of the `"hello"`, modifies the copy, and then returns a reference to the copy. Thus `value` is referring to a different string object after that line. 

**ruby uses strict evaluation strategy where every expression is evaluated and coverted to an object before it is passed along to a method. Pass by value/reference is one kind of the strict evaluations**

#### Example3

```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y)
puts y
```



- difference between pass by value vs pass by reference?
  - pass by value create a copy of `y` before passing it to `increment`; pass by reference passes a reference to `y` to `increment`, and `x` becomes an alias for `y`
  - because ruby's variable don't contain objects. even if we pass a literal to the method, ruby will first covert that literal to an object and then create a reference to the object
  - ruby is pass by reference, it's not wrong; as long as to account for assignment and immutability 
  - ruby is pass by reference value - passes around copies of the references. The original reference cannot be changed, but the method can use the references to modify the referenced object. 

Example4

```ruby 
def amethod(param)
    param += " world"
    param + " world"
    param << " world"
end
str = "hello"
amethod(str)
p str
```

- first is reassignment 
- second is a `+` method call; it's not a method that mutates its calling object; concat returns a new string and then goes away because not assigned 
- `<<` mutates the object

def fix(value)
  value.upcase!
  value.concat('!')
  value
end
s = 'hello'
t = fix(s)



### Methods(loop, each, map, etc) (Lesson 4)

#### Loop 

	- calling Kernel loop and passing a block to it
	- any code within the block will be executed each time the loop performs an iteration

#### Each 

<u>If you call `each` with a block on an array that contains seven elements, the block doesn't always execute 7 times</u>

```ruby
[1, 2, 3].each do |num|
    puts num
end 
```

method `each` is being called on array, and `do...end` block is passed to it as an argument with a parameter `num`. `each` iterates through the array object passing each value of the current element to the block as `num` as an argument. The code within the block is executed for each iteration. 

the return value is the original collection `[1, 2, 3]`

The each method iterates over a collection object and executes the code within the block for every iteration, but ignores the block and returns the object it was invoked on

#### map

 `[[1,2], [3,4]].map {|arr| puts arr[]}`

1. it returns a new array object populated with the return values of the block in each iteration 
2. iterates through the array passing value of each current element as `num` to the block as an argument and runs the block. it runs the block and takes the return value and moves it into a new array. when it finishes, it returns that new array populated with the return values of each iteration.

#### select

```ruby
[1, 2, 3].select do |num|
    num.odd?
end
```



`select` only cares about truthiness of the return value, the element during that iteration will be selected.

it returns a new collection containing all of the selected elements.

```[1,2,3].select {|num| 'hi'}```

returns a new array object populated with all the elements from the original array for which the block returned **a truthy value**

iterates through the array object passing each value of the current element as `num` to the block as an argument and runs the block.`select` evaluates the return value of the block on each iteration. if that return value evaluates to`true`(in ruby it means not `nil` or `false`) add the value of the current element to a new array. 

## Key questions

#### Assignment

```ruby
a = 'hello'
b = a 
a = 'goodbye'
```

a local variable `a` is initialized to a string object with value `'hello'`. on line 2, we initialize the local variable `b` to the string object that the local variable `a` is referencing. we then reassign the local variable `a` to reference a different string object with a different value `'goodbye'`

```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```

line 1-8, we are defining the method `example` which takes 1 parameter. on line 10, we are calling the method `example` and passing the string `hello` as an argument to it. line 2, we initialize the local variable `i` and assigning to it an integer with value `3`. line 3, we call the method `loop` and passing the `do..end` block as an argument to it. line 4, we call the method `puts` and pass the local variable `str` to it as an argument.

line 5, the local variable `i` is reassigned to the return value of a method call `-` on a local variable `i` with integer 1  passed to it as an argument

line 6, we are breaking out of the loop by keyword `break` if the value of the object that local variable `i` is referencing is equal to 0

the code outputs string `hello` 3 times and returns `nil`. 

#### Variable Shadowing

```ruby

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```

line 1, we initialize a local variable `a` to integer object with value `4`

line 4, `loop` method is called and block `do..end` following it is passed in as an argument. The block defines a new inner scope. Within this scope, a new variable `c` is initialized to integer object with value `4`

line 6, we reassign variable `a` so that it points to the same string object as `c`, the integer object `3`. since we are in the inner scope, both inner initiated variable `c` and outer scope variable `a` are accessible

line 10 method `puts` is called and local variable `a` is passed to it as an argument. the code outputs the value of variable `a` which is `3` since we reassigned it on line 6 

```ruby 
2.times do |a|
    a = 5
    puts a
end
```

`times`method is called on integer `2` and `do..end`block is passed to it as an argument with one parameter `a`.

we then assign integer `5` to the local variable `a` passed in as a parameter of the `do..end`block 

## Practice questions

### Local Variables Scope

#### Example 1

```ruby
a = `hello`
b = a 
a = 'goodbye'
puts a 
puts b 
```

The code will output `'goodbye'` and then `'hello`'. it will return `nil`.  This demonstrates the concept of reassignment 

a local variable `a` is initialized to string object `'hello'`. on line 2, variable `b` is initialized to the same object that `a` is referencing to. In other words, `b` is referencing the same string object `'hello'` as `a`. On line 3, variable `a` is reassigned to a new string object with a different value `'goodbye'`. Now `b` and `a` are pointing to different objects. 

Thus when line 4 and 5 call method `puts` with variable `a` and `b`passing to it as arguments. It will first output `'goodbye'`, the value of the object that `a` points to and then `'hello'`, the value of the object that `b` points to.

#### Example 2

```ruby
a = 4

loop do 
    a = 5
    b = 3
    
    break
end

puts a 
puts b

```

The code will output `4` first and then throw an error. This is due to the concept of local variable scope where variables initialized in the outer scope can be accessed from inner scope but not vice versa.

on line 1, variable `a` is initialized to integer object `4`.

on line 3, method `loop` is invoked, followed by `do..end` block  passed to it as an argument. The block creates an inner scope.

because inner scope can access the outer scope, line 4 was able to reassign variable `a` a new integer object `5`

on line 5, a local variable `b` is initiated to integer object `3`.  

after we break out of the loop. we first call method `puts` and pass variable `a` to it as an argument, because `a` was reassigned in the `loop` method, `a` now points to `5` and thus the code outputs 5

however, when we call `puts` method again and pass variable `b` to it, we are unable to access the inner scope created by `loop` and with it the variable `b` that was initiated there. Thus, the code will throw an error 

#### Example 3

```ruby
a = 4
b = 2

loop do 
    c = 3
    a = c
    break
end

puts a 
puts b
```

The code will output `3` and `2` and return `nil`. This mainly demonstrates the concept of reassignment.

on line 1, variable `a` is initialized to integer object `4`

on line 2, variable `b` is initialized to integer object `2`. from then on until the last line of code, variable `b` was not mentioned and thus when line `11` called method `puts` and pass variable `b` to it, it will simply output `2`, the value of the object that `b` points to.

on line 4, method `loop` is invoked with `do..end` block passed to it as an argument. 

on line 5, variable `c` is initialized to integer object `3`. then on line 6, the block is accessing variable `a` from the outer scope and reassigned to it the same integer object that `c` is pointing to, `3`.

Thus on line `10`, the code calls method `puts` and pass variable `a` to it. The code outputs `3`

#### Example 4

```ruby
def example(str)
  i = 3
  loop do 
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```

the code outputs `hello` three times and return `nil`. It shows the implicit return of methods in Ruby

Overall, line `1` - `8` is defining method`example` which takes one parameter `str`

Then on line `10` method `example` is called with `'hello'` passed to it as an argument. Method parameter `str`is assigned to `'hello'` and made available in the method body as a local variable.

within the method, on line `2`, variable `i` is initialized to integer `3`. on line `3`,  method `loop` is called with `do..end` block passed to it as an argument. 

on line 4, method `puts` is called with `str` passed to it as an argument. The code outputs`hello`

on line 5, variable `i` is reassigned to the return value of a method call `-` on a local variable `i` with integer `1`passed to it as an argument method.

on line 6, code will break out of the `loop`  with keyword `break` `if` the value of the object `i` points to equal to `0`.

The code thus outputs string object `'hello'` 3 times but return `nil` because the return value of the last line of code executed is the return value of the method. In this case, `if i == 0` return value is `nil`.

#### Example 5

```ruby
def greetings (str)
    puts str
    puts 'Goodbye'
end

word = 'Hello'

greetings(word)
```

the code outputs 'Hello' and 'Goodbye' and return `nil`. This shows implicit return value of a method is the return value of the last executed line

line 1-4 is defining the method `greetings` which has one parameter `str`.

line `6`, variable `word` is initialized to string object `'Hello'`

line `8`, method `greetings` is called with variable `word` passed to it as an argument. string object `'Hello'` that `word` referencing is then assigned to method parameter `str`. 

line `2`, method `puts` is called with `str` passed to it as an argument. the code will output `'Hello'`, the object that `str` points to.

line `3`, method `puts` is called again with `Goodbye` passed to it as an argument. The line will output 'Goodbye'.

since line `3` is the last line of the method, its return value will be the return value of the method. In this case, `puts` return `nil`.

#### Example 6

```ruby
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do 
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```

code will output "Your total is 10" and return `nil`.  This shows the concept of local variable scope where inner scope can access outer scope but not vice versa.

on line `1`, variable `arr` is initialized to array object `[1, 2, 3, 4]`. on line `2`, variable `counter` is initialized to integer object `0`. on line `3`, variable `sum` is initialized to integer `0`

on line `5`, method `loop` is called with `do..end` block passed to it as an argument. 

on line `6`, the block is accessing outer scope variables and variable `sum` is reassigned to the return value of a method call `+` on `sum` with `arr[counter]` passed to it as an argument. on line `7`, variable `counter` is similar reassigned to the return value of method call  `+`  on `counter`with `1` as an argument.  

on line `8`, the `break` keyword will allow the code to break out of the loop if the object value of `counter` equal to the return value of `arr.size`(which is a method call of `size` on `arr`). Otherwise, line `6` and `7` will keep running.

In this case, the two lines ran 4 times before breaking out of the `loop`.  Throughout each reassignment, inner scope of `loop` was accessing variables initiated in the `main`, and `sum` and `counter` were reassigned to different string objects with different values each time. last line calls method `puts` and pass string `"Your total is #{sum}"` as an argument. Within the string, variable `sum` that points to `10` is passed to string interpolation.

#### Example 7

```ruby
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```

the code will output `'Bill'` and return `nil`. This shows a concept of local variable scope where inner scope can access variable initialized in the outer scope but not vice versa.

on line `1`, variable `a` is initialized to string object '`Bob`'

on line `2`, method `times` is called on integer object `5`, and the following `do..end` block is passed to it as an argument with a parameter `x`

In the block, on line `3`, the block is accessing variable `a` initialized in the outer scope and reassign to it a new string object `Bill`. Due to the function of the method, the block is run 5 times and each time reassigned to variable`a` a new string object with the same value of `Bill`

on line `5`, method `print` is called with variable `a` passed to it as an argument. The code outputs the value of the object that `a` points to which is now `Bill`.

#### Example 8

```ruby
animal = 'dog'

loop do |_|
  animal = 'cat'
  var = 'ball'
  break
end

puts animal
puts var
```

the code outputs `'cat'` and then throw an error. This is due to the concept of local variable scope where variables defined in the outer scope can be accessed by the inner scope but not vice versa.

on line `1`, variable `'animal`' is initialized to a string object `'dog'`. 

on line `2`, `loop` method is called and a `do..end` block passed to it as an argument with a parameter `-`. The `do..end` block creates an inner scope. In this case, parameter is named `-` because the parameter is not used in the block. 

In the block, on line `3`, the variable `animal `initialized in the outer scope is being accessed and a new string object `'cat'` is reassigned to the variable.

on line `4`, a variable `var` is initialized to a string object `'ball`'.

Thus, once we are out of the loop and the code on line `7` calls method `puts` and pass variable `animal` to it as an argument, it will output `'cat'`, the string object that the variable points to after reassignment.

on line `8`, method `puts` is called again with `var` passed to it as an argument. In this case, the `main` scope is unable to access `var` variable that is initialized in the inner scope and thus the code throws an error.

### Variable Shadowing

#### Example 1

```ruby
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```

The code will output `5` two times and then `4`  and `2`. This is due to the concept of variable shadowing where sometimes the block takes a parameter and it prevents the block to access the outer scope variable with the same name. 

on line `1` variable `a` is initialized to a string object `4`. 

Then on line `3`, method `times` is called on integer object `2` and `do..end` block is passed to it as an argument with a parameter `a`. Since the block parameter has the same name as the outer variable, the block is prevents from accessing the outer scope variable `n`.

on line `4`, the parameter `a` is assigned to integer object `5`

on line `5`, method `puts` is called with variable `a` (the parameter) passed to it as an argument. the code outputs `5`, the string object that `a` points to. `times` method runs the code on line `4-5` twice and thus `5` is output twice. 

on line `6`, we are out of the loop. method `puts` is called and local variable `a` from `main` is passed to it as an argument. Thus the code outputs `2`. 

on line `7`, method `puts` is called and variable `b` is passed to it as an argument. variable `b` is initialized on line `2` to integer object `2` and thus the code will output `2`.

#### Example 2

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```

The code outputs `10` and return `nil`. This is due to the concept of variable shadowing.

on line `1`, variable `n` is initialized to integer object `10`.

on line `2`, method `times` is called on integer object `1`, and `do..end` block is passed to it as an argument with parameter `n`. since the parameter has the same name as the outer variable, it will prevent the block from accessing the outer variable `n`.

on line `3`, parameter `n` is assigned to integer object `11`.

lastly on line `5`, method `puts` is called with local variable `n` passed to it as an argument. In this case, we are out of the inner scope of `times` and `main` scope cannot access variables initialized there. Thus the variable `n` is the one that was initialized on line `1` and is referencing `10`. The code outputs `10`.

#### Example 3

```ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```

the code outputs `'dog'` due to the concept of variable shadowing where sometimes the block takes a parameter and it prevents the block to access the outer scope variable with the same name. 

on line `1`, variable `animal` is initialized to string object `'dog'`

on line `2`, method `loop` is called and `do..end` block is passed to it as an argument with a parameter `animal`. since the parameter has the same name as an outer variable, it will prevent the block from accessing the outer variable `animal`.

on line `3`, parameter `animal` is assigned string object `'cat'`

then on line `6` out of the inner scope of `loop` method, method `puts` is called with local variable `animal` passed to it as an argument. In this case, the code cannot access the inner scope parameter but only the variable initialized in the `main` on line `1`. Thus the code output`'dog'` , the string object that variable `animal` points to.



### Object Passing

```ruby
a = "hi there"
b = a
a = "not here"
```

`a` is referencing `'not here'` and `b` is referencing `'hi there'`. This demonstrates the concept of variable as pointers to physical space in memory.

on line `1`, variable `a` is initialized to string object `'hi there'`. on line `2`, variable `b` is initialized to the same object that `a` is referencing. In other words, both `a` and `b` are now pointing to the same string object `'hi there'`

on line `3`, variable `a` is reassigned a new string variable `'not here'`. Now variable `a` and variable `b` are pointing to two different string objects with two different values.

variable `a` is pointing to `'not here'` and variable `b` is pointing to `'hi there'`.

#### Example 2

```ruby
a = "hi there"
b = a
a << ", Bob"
```

variable `a` and `b` are both referencing `'hi there,  Bob'.  This shows that in Ruby variables are just pointers to physical space in memory. The object they point to can be mutated and all the other variables that point to that object will also be impacted.

on line `1`, variable `a` is initialized to string object `'hi there'`. on line `2`, variable `b` is initialized to the same object `a` is referencing. In other words, variable `b` and `a` are now pointing to the same object `'hi there'`.

<u>on line `3`, method `<<` is called on `a` with `", Bob"` passed to it as an argument</u>. This method mutates the object `'hi there'` that `a` points to to `'hi there, Bob'`. Because variable `a` and `b` both points to that object. Now they are both referencing `'hi there, Bob'`.

#### Example 3

```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

variable `a` and `b` are both referencing array object `[1, 2, 3, 3]`, and `c` is referencing array object `[1, 2, 3]`. This is shows Ruby's non-mutating methods and concept of variable as pointers. 

on line `1`, variable `a` is initialized to array  object `[1, 2, 3, 3]`. on line `2`, variable `b` is initialized to the same array object that `a` is referencing. In other words, variable `a` and `b` now point to the same object.

on line `3`, variable `c` is initialized to the return value of a method call `uniq` on variable `a`. Because method `uniq` is a non-mutating method and it returns a new array, so new array `[1, 2, 3]` is returned and assigned to variable `c`. The object that `a` and `b` points to is unchanged. 

#### Example 4

```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```

`a` is referencing `['a', 'b', 'c']` and the code returns an array object `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`. This shows that some of Ruby's methods are non-mutating and variables act as pointers to physical space in memory

on line `4`, variable `a` is initialized to array object `['a', 'b', 'c']`. 

on line `5`, method `test` is called with variable `a` passed to it as an argument. The array object that variable `a` points to is then assigned to the method parameter `b`, and made available as a local variable throughout the method body.

then in the method on line `2`, method `map` is called on variable `b`, and `do..end` block (in this case `{..}`) is passed to it as an argument with parameter `letter`. This allows each element of the array that variable `b` is referencing to be assigned to parameter `letter` on each iteration.

Because method `map` returns a new array populated with the return value of the given block on each iteration, it returns a new array `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`. The original object that variable `b` is referencing is not mutated during this process. Since line `2` is the last line of the method, its return value will be the return value of the whole method(without any other explicit `return`). line `5` will return `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`. Because the object that both parameter `b` and variable `a` point to was not mutated, `a` is still referencing to `['a', 'b', 'c']`. 

#### Example 5

```ruby
a = 5.2
b = 7.3

a = b

b += 1.1
```

variable `a` is referencing integer object `7.3` and variable `b` is referencing integer object `8.4`. This shows the concept of variable as pointers and reassignment in Ruby.

on line `1`, variable `a` is initialized to integer object `5.2`. on line `2`, variable `b` is initialized to integer object `7.3`.

on line `3`, variable `a` is reassigned the integer object that variable `b` is referencing. in other words, now variable `a` and `b` are pointing to the same integer object `7.3`

on line `4`, variable `b` is reassigned to the return value of a method call `+` on variable `b` with `1.1` passed in as an argument. Thus integer object `8.4` is reassigned to variable `b`. variable `a` and the object it points to was not impacted during the process.

Thus variable `b` points to `8.4` and variable `a` points to `7.3` at the end of the code

#### Example 6

```ruby
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```

The code outputs `'Written Assessment'`. This demonstrates Ruby's pass by reference value,  in that a copy of the object's reference is made available and worked within the method definition. If the original object is mutable it can be altered, but only if it's still referenced by the parameter it was assigned to during invocation.

variable `test_str` is initialized on line `5` to string object `'Written Assessment'`. On line `6`, method `test` is called and variable `test_str` is passed to it as an argument. The object `test_str` is referencing is then assigned to the method parameter `str` and made available throughout the method body as a local variable.

within the method, on line `2`, variable `str` is reassigned to the return value of a method call `+` on variable `str` with `!` passed in as an argument. From then on, variable `str` and `test_str` are referencing different string objects with different values, and the object that `test_str ` points to can no longer be altered. 

Thus on line `7`, method `puts` is called and `test_str` is passed to it as an argument, the code outputs `'Written Assessment'` because the string object was not mutated when it was passed into the method `test` as an argument. 

#### Example 7

```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```

the code outputs `3` and `5`, and this example shows Ruby's pass by reference value, in that a copy of the object's reference is made available and worked within the method definition. If the original object is mutable it can be altered, but only if it's still referenced by the parameter it was assigned to during invocation.

on line `4`, variable `a` is initialized to integer object `3`. 

on line `5`, method `plus(x,y)` is called; variable `a` and integer object `2` are passed in as arguments. Method parameter `x` is then assigned to the object that `a` points to which is `3` and parameter `y` is assigned to integer object `2`, both of which are made available to the method body as local variables. 

within the method, on line `2`, variable `x` is reassigned to the return value of a method call `+` on `x` with variable `y` passed to it as an argument. From then on, variable `x` and variable `a` are referencing two different integer objects, and variable `a` 's reference and the object value it is referencing to are not changed.

The return value for line `2` is is the return value of the method `+` which is `5`. Since this is the last line of the method, its return value is the return value of the method `plus`, which is then assigned to variable `b`.

Thus at the end of the code, when method `puts` is called and variable `a` and `b` passed to it as arguments, `puts a` outputs `3` and `puts b` outputs 5.

#### Example 8

```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 
puts y
```

The code outputs `'ab'` and returns `nil`. This shows Ruby's pass by reference value,  in that a copy of the object's reference is made available and worked within the method definition. If the original object is mutable it can be altered, but only if it's still referenced by the parameter it was assigned to during invocation.

on line `4`, variable `y` is initialized to string object `a`. 

on line `5`, method `increment` is called and variable `y` is passed to it as an argument. String object `a` that variable `y` points to is then assigned to method parameter `x` and made available to the method body as a local variable.

within the method on line `2`, method `<<` is called on variable `x` with `'b'` passed to it as an argument. This is a mutating method and the object that variable `x` points to is thus mutated. 

Because both variable `x` and outer scope variable `y` point to the same string object, on line `6` when method `puts` is called with variable `y` passed to it as an argument, `'ab'` is output. 

#### Example 9

```ruby
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
```

the code outputs `bob` and returns `nil`. This shows Ruby's pass by reference value,  in that a copy of the object's reference is made available and worked within the method definition. If the original object is mutable it can be altered, but only if it's still referenced by the parameter it was assigned to during invocation.

on line `4`, variable `name` is initialized to string object `'jim'`. 

on line `5`, method `change_name` is called with variable `name` passed to it as an argument. `jim` the string object that variable `name `is referencing is then assigned to method parameter `name` (same name but different variables) and made available to the method body as a local variable.

within the method on line `2`, parameter `name` is reassigned to a new string object `'bob'`. Now parameter `name` and outer scope variable `name` are pointing to two different string objects. Neither the outer scope `name` 's reference nor the object it is referencing to is changed during this process as reassignment is not mutating.

Thus on line `6`, method `puts` is called with local variable `name` passed to it as an argument, it is passing in the variable initialized on line `4` and it outputs `jim`.

#### Example 10

```ruby
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 
```

The code outputs `"jim"` and returns `nil`

on line `6`, a local variable `name` is initialized to string object `"jim"`

on line `7`, method `cap` is called with variable `name` passed to it as an argument. Object referenced by `name` is then assigned to the parameter `str` and made available to method body as a whole. Inner scope variable `str` and outer scope `name` are now referencing the same string object.

Within the method on line `2`, method `capitalized!`is called on object referenced by variable `str`. The object is mutated by the method to `"Jim"` and the same object is returned. 

Because variable `name` and `str` are pointing to the same string object, after mutation, they are both pointing to `"Jim"`

on the last line, method `puts` is called with `variable` name passed to it as an argument. The code outputs `"Jim"` and returns `nil` since `puts` always returns `nil`

#### Example 11

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
```

variable `arr` references `[[1, 3], [2]]` on line `4` but it references `[[1, 5], [2]]` on line `7`.

On line `3`, variable `arr` is initialized to an array object with two elements. Array object `[1, 3]` referenced by variable `a` is assigned to its first element and array object `[2]` referenced by `b` is assigned to its second element.

On line `4`, variable `arr` points to array object `[[1, 3], [2]]`

on line `6`, indexed assignment is used to reference and reassign the second element of array object referenced by variable `a`. Integer object `5` is reassigned to be its second element and the array object, the collection itself, is mutated. 

Because variable `a` and first element of variable `arr` points to the same array object, they are both now pointing to `[1, 5]`.

So on line `7`, `arr` returns `[[1, 5], [2]]`

#### Example 12

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2
```



### Object Mutability

#### Example 1

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

#### Example 2

```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

In both examples, the last two lines are the same. variable `s` is initialized to a string object `"hello"`. variable `t` is initialized to the return value of method call `fix` with variable `s` passed to it as an argument. object referenced by variable `s` is then assigned to parameter `value` and made available to the method body as a local variable.

However, within the method, they are different. In example 1,  on line `2`, method `upcase!` is called on object referenced by variable `value`. This method mutates the string object and returns it (without creating a new one). Thus, variable `s` in the outer scope and variable `value` are now both pointing to string object `"HELLO"`

On line `3`, similarly, another mutating method `concat` is called on object referenced by variable `value`. The string object is mutated and returned again. Now both variable `s` and `value` are pointing to `"HELLO!"`. and on line `4`, object referenced by variable `value` is returned and assigned to `t`.

Now, variable `t`, `s` both point to `"HELLO!"`

In example 2, variable `value` is reassigned to the return value of method call `upcase`on object referenced by itself`value`. The method `upcase` is not a destructive method, and it creates a new copy of the string object referenced by `value`, modifies that copy and returns it. So `value` is then assigned to a new string object `'HELLO'`. From then on, the method is unable to mutate the original string object passed to it since the reference is reassigned. 

#### Example 3

```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

variable `s` is referencing `"helloxyz"` and variable `t` is referencing `"HELLOXYZ!"`

local variable `s` is initialized to string object `"hello"`. local variable `t` is initialized to the return value of  a method call `fix` with variable `s` passed to it as an argument. object referenced by variable `s` is then assigned to the method parameter `value` and made available to the method body as a local variable. Now both variable `s` and `value` are referencing to the same string object `'hello'`.

Within the method on line `2`, method `<<` is called on object referenced by variable `value` with string object `xyz` passed to it as an argument. Because method `<<` is a mutating method, string object referenced by `value` is modified and returned without creating a new string. Now both variable `s` and `value` are pointing to `'helloxyz'`

However, on line `3`, variable `value` is reassigned to the return value of method `upcase` called on object referenced by `value`. Method `upcase` is not destructive and it creates a copy of the string object `'helloxyz'`, modifies it and returns the copy. Thus, from then on, the method is no longer able to modify the original string object because the reference to it has been changed. Now `value` points to `'HELLOXYZ'` and outer scope variable `s` points to `'helloxyz'`.

Thus the method returns a new string object `'HELLOXYZ!' `and assign to it to variable `t` while variable `a` is pointing to `'helloxyz'`.

#### Example 4

```ruby
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

#### Example 5

```ruby
def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)
```

both `s` and `t` references the same string object `axc`

variable `s` is initialized to string object `abc`. variable `t` is initialized to the return value of method call `fix` with `s` passed to it as an argument. object referenced by `s` is then assigned to the method parameter `value`. `value` and `s` references the same string object `abc`

on line `2`, indexed assignment is used to reassign the second element of the string object referenced by `value`. It is a destructive method and the string object `'abc'`is mutated even though `value[1]` is reassigned. Line `3` , last line of code of the method, returns object referenced by variable `value`, thus the method returns `'axc'`, which is assigned to variable `t`.

Because variable `s` and `t`points to the same string object which was mutated in the method, they both point to `'axc'`.



#### Example 6

```ruby
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a
```

#### Example 7

```ruby
num = 3

num = 2 * num
```

#### Example 8

```ruby
a = %w(a b c)
a[1] = '-'
p a
```

#### Example 9

```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

#### Example 10

```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

### Each, Map, Select

#### Example 1

```ruby
array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end
```

The code outputs `1`, `3`, `5` and returns `[]`.  This is due to the function of the method `select` where it returns a new array object populated with all the elements from the original array for which the block returned a truthy value. 

on line `1`, variable `array` is initialized to array object `[1, 2, 3, 4, 5]`. 

on line `2`, method `select` is called on variable `array` , and `do..end` block following it is passed in as a argument with a parameter `num`. Each of elements in the object that variable `array` points to is then assigned to the parameter `num` on each iteration and made available to the block. 

Within the block on line `3`, method `puts` is called on with `num` passed to it as an argument on the `if` condition that `num.odd?` evaluates to `true`. Thus, on each iteration, method `odd?` is called on the object that `num` points to and if the return value is a truthy value, `puts` will be executed. 

Since `puts` method always returns `nil`. For each iteration the block return value is `nil`. Thus none of the elements are selected to the new array and the `select ` method returns an empty array.

#### Example 2

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
```

the code returns `[1, 3, 5, 7, 9]`. 

On line `1`, variable `arr` is initialized to array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. 

on line `2`, method `select` is called on the object that `arr` variable references to and a block `{}` is passed to it as an argument with a parameter `n`. Each element in the array object of `arr` is then assigned to the parameter `n` on each iteration and made available to the block.

Due to the function of the method `select` , on each iteration, the code in the block is evaluated. In this case, the return value of a method call `odd?` on the object that variable `n` references is evaluated. If it evaluates to `true`, the original element passed to the block on that iteration is added to a new array.

At the end, it returns a new array object populated with all the elements from the original array for which the block returned a truthy value. 

#### Example 3

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array
```

The code outputs and returns `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `1`, a local variable `arr` is initialized to array object `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`.

on line `2`, a local variable `new_array` is initialized to the return value of a method call `select ` on the object referenced by variable `arr` with `do..end` block passed to it as an argument and one parameter `n`.

the method then iterates through the array object `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`passing each value of the current element as `n` to the block as an argument and runs the block. `select` evaluates the return value of the block on each iteration. if that return value evaluates to`true`, it adds the value of the current element to a new array. 

In this case, code in the block on line `4` is a method call `+` on object referenced by variable `n` with `1` passed to it as an argument. With each iteration, it returns an integer object which evaluates to `true`. 

Thus the method returns  `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` which is then assigned to `new_array`

on last line, method `p` is called with `new_array` passed to it as an argument. the code outputs `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` .

#### Example 4

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array
```

the code outputs, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `[]` and returns `[]`

on line `1`, a local variable `arr` is initialized to `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `2`, a local variable `new_array` is initialized to the return value of a method call `select` on object referenced by `arr`with `do..end` block passed to it as an argument and a parameter `n`.

The method then iterates through the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, passing each value of the current element as `n` to the block as an argument and runs the block. `select` evaluates the return value of the block on each iteration. if that return value evaluates to`true`, it adds the value of the current element to a new array. 

In this case, last line of code of the block is on line `5`. It calls method `puts` and passes variable `n` to it as an argument. Because `puts` always returns `nil` which does not evaluate to `true` in Ruby. So the method returns an empty array.

Empty array `[]` is assigned to variable `new_array`. Last line `7` calls method `p` and pass `new_array` to it as an argument. it returns and outputs `[]`

#### Example 5

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```

The code returns and outputs `[false, true, false, false, true]`. 

On line `1`, variable `words` is initialized to array object `["jump", "trip", "laugh", "run", "talk"]`.

on line `2`, variable `new_array` is initialized to the return value of a method call `map` on the object referenced by variable `words`, and a `do..end` blocks is passed to it as an argument with a parameter `word`.

The `map`method iterates through the array object `["jump", "trip", "laugh", "run", "talk"]` passing value of each current element as `word` to the block as an argument and runs the block. It takes the return value of the block and moves it into a new array. when it finishes, it returns that new array.

Thus in this case, on line `3`, the return value of a call on method  `start_with?` on the object referenced by variable `word` with `t` passed to it as an argument is added to the new array on each iteration. Thus the return value is `[false, true, false, false, true]` and it is assigned to variable `new_array`

Last line of code calls method `p` and pass `new_array` to it as an argument. The code outputs and returns `[false, true, false, false, true]`

#### Example 6

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }
```

The code puts `1`, `2`, `3`, `4`,`5`,`6`, `7`, `8`, `9`, `10` and returns `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `1` , variable `arr` is initialized to array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `2`, method `each` is called on the object referenced by variable `arr` and `{}` is passed to it as an argument with a parameter `n`. The method then iterates through `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, passing value of each current element as `n` to the block as an argument and runs the block. 

So on each iteration, method `puts` is called with `n` passed to it as an argument, and the code will output `n`.

After the iteration finishes, the method returns the original array it was invoked on. Thus array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`referenced by variable `arr` is returned.

#### Example 7

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
```

The code outputs and returns  `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`  

on line `1`, variable `arr` is initialized to array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `2`, variable `incremented` is initialized to the return value of a method call `map` on the array object referenced by variable `arr` with `do..end` block passed to it as an argument and `n` as a parameter.

The method `map` iterates through the array `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`passing value of each current element to the block as `n` as an argument. It takes the return value of the block on each iteration and moves it into a new array. when it finishes, it returns that new array.

In this case, the only code in the block is `n+1` which is a method call `+` on object referenced by variable `n` with `1` passed to it as an argument, which returns an integer object.

Thus, the method returns the new array  `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`  which is then assigned to variable `incremented`

Last line, method `p` is called with variable `incremented` passed to it as an argument. The object referenced by `incremented` is output and returned.

#### Example 8

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array
```

The code outputs and returns `[false, true, true, true, true, true, true, true, true, true]`

on line `1`, a local variable `arr` is initialized to array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `2`, a local variable `new_array` is initialized to the return value of a method call `map` on object referenced by variable `arr` and a `do..end` block is passed to it as argument with a parameter `n`.

The method iterates through the array object` [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, passing the value of each current element as `n` to the block as an argument and runs the block. It takes the return value of the block on each iteration and moves it into a new array. when it finishes, it returns that new array.

In this case, the code in the block is on line `4`, which uses comparison operators `>` and returns a boolean

Thus the return value of the method `map` is  `[false, true, true, true, true, true, true, true, true, true]` which is assigned to variable `new_array`

last line calls method `p` with `new_array` passed to it as an argument. It returns and outputs  `[false, true, true, true, true, true, true, true, true, true]`.

#### Example 9

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array
```

The code outputs and returns `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`

on line `1`, a local variable `arr` is initialized to array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

on line `2`, a local variable `new_array` is initialized to the return value of a method call `map` on the object referenced by variable `arr` and a `do..end` block is passed to it as an argument with a parameter `n`.

The `map`method iterates through the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` passing value of each current element as `n` to the block as an argument and runs the block. It takes the return value of the block on each iteration and moves it into a new array. when it finishes, it returns that new array.

In this case, last line of code in the block is on line `5`. It calls method `puts` and passes variable `n` to it as an argument. Since `puts` always returns `nil`, the method returns `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]` which is then assigned to variable `new_array`

last line calls method `p` and passes variable `new_array` to it as an argument. It returns and outputs `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`

#### Example 10

```ruby
a = "hello"

[1, 2, 3].map { |num| a }
```

The code returns `["hello", "hello", "hello"]`

on line `1`, a local variable `a` is initialized to string object `'hello'`

on line `3`, method `map` is called on array object `[1, 2, 3]` and a `{}` block is passed to it as an argument with a parameter `num`

The method iterates through the array object passing value of each current element as `num` to the block as an argument and runs the block. It then takes the return value of the block on each iteration and adds it to a new array. When it finishes, it returns the new array. 

In this case, the block contains only one line of code `a` and returns value of the object referenced by variable `a`. Thus the method returns `["hello", "hello", "hello"]`.

#### Example 11

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

The code outputs `1`, `2`, `3`, and returns `[1, 2, 3]`

on line `1`, method `each` is called on array object `[1, 2, 3]` and a `do..end` block is passed to it as an argument with a parameter `num`

The method then iterates through the array object passing the value of each current element as `num` to the block as an argument and runs the block. 

In this case in the block, line `2` calls method `puts` and passes variable `num` to it as an argument, and the value of object referenced by `num` is output each time.

After the method finishes, it returns the original object it was invoked on which is `[1, 2, 3]`

### Other Collections

#### Example 1

```ruby
[1, 2, 3].any? do |num|
  num > 2
end
```

the code returns `true`

on line `1`, method `any?` is called on array object `[1, 2, 3]`and a `do..end` block is passed to it as an argument with one parameter `num`.

The method iterates through the array object passing value of each current element as `num` to the block as an argument and runs the block. The return value of the block is evaluated in each iteration and if the block ever returns a value evaluated to be `true`, the method returns `true`. 

In the block on line `2`, operator `>` is used to compare the value of object referenced by `num` to `2`. Since in one of the iterations the block returns `true`. the method returns `true`.

####  Example 2

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

The code returns `false`

on line `1`, method `any?` is called on hash object `{ a: "ant", b: "bear", c: "cat" }` and a `do..end` block is passed to it as an argument with two parameters `key` and `value`.

The method iterates through the hash object and passing value of each pair of key and value as variable `key`and `value` to the block as arguments and runs the block. The return value of the block is evaluated in each iteration and if the block ever returns a value evaluated to be `true`, the method returns `true`. 

In this case, in the block on line `3`, method `size` is called on  object referenced by variable `value`. The return value of the method is compared to integer `4` by the comparison operator `>`. Since none of the return values during the iterations returns `true`, the method returns `false`.

#### Example 3

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
```

The method returns `false`

on line `1`, method `all?` is called on array object `[1, 2, 3]`and a `do..end` block is passed to it as an argument with one parameter `num`.

The method iterates through the array object passing value of each current element as`num` to the block as an argument and runs the block. The return value of the block is evaluated. If the block never evaluates to `false` or `nil` in any iteration, the method returns `true`

In this case, in the block line `2` uses comparison operators to compare the value of object referenced by `num` to integer object `2`. Since the block has returned `false` at least once, the method returns `false`.

#### Example 4

```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
```

The code returns `true`

on line `1`, method `all?` is called on hash object `{ a: "ant", b: "bear", c: "cat" }` and a `do..end` block is passed to it as an argument with two parameters `key` and `value`. 

The method iterates through the hash object and passing value of each pair of key and value as variable `key`and `value` to the block as arguments and runs the block. If the return value of the block never evaluates to `false` or `nil` in any iteration, the method returns `true`

In this case, in the block line `3` calls method `length` on object referenced by variable `value`. The return value of the method is then compared to integer object `3` by comparison operator `>=`. Since the block has never returned `false ` or `nil` in any iterations, the method returns `true`.

#### Example 5

```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
```

The code outputs `The index of 1 is 0.`, `The index of 2 is 1.`, `The index of 3 is 2.` and returns `[1, 2, 3]`

on line `1`, method `each_with_index` is called on array object `[1, 2, 3]`, and a `do..end` block is passed to it as an argument with two parameters `num` and `index`.

The method iterates through the array object passing value of each current element and its index as variable `num` and `index` to the block as arguments and runs the block. 

In this case, in the block line `2` calls method `puts `and pass in an string object as an argument and in the string object we use string interpolation to input variable `num` and `index`. 

After the method finishes, it returns the original array it was invoked on, `[1, 2, 3]`.

#### Example 6

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
```

The code returns `["ant", "bear", "cat"]`

on line `1`, method `each_with_object` is called on hash object `{ a: "ant", b: "bear", c: "cat" }`, and a `do..end` block is passed to it as an argument with parameters `pair` and `array`. `[]` is assigned to parameter`array` and made available to the block.

The method iterates through the hash object passing the value of each pair of key and value as `pair` to the block as an argument and runs the block. 

In this case, In the block on line `3`, method `<<` is called on object referenced by variable `array`, with the return value of method call `last` on object referenced by variable `pair` passed in as an argument. 

After `each_with_object` method finishes, it returns the value of object referenced by `array` . 

#### Example 7

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
```

 The code returns `{"ant"=>:a, "bear"=>:b, "cat"=>:c}`

on line `1`, method `each_with_object` is called on hash object `{ a: "ant", b: "bear", c: "cat" }`, and a `do..end` block is passed to it as an argument with parameters `key`, `value`, and `hash`. 

`{}` an empty hash is assigned to parameter `hash` and made available to the block.

The method iterates through the hash object passing value of each pair of key and value as variable `key` and `value` to the block as arguments and runs the block.

In the block on line `3`, code uses element assignment to first look inside variable `hash` for a key matching the value of object referenced by `value` . If the key is found, then it mutates the `hash` and reassign correspondent value to object referenced by `key`. If a key isn't found a new `key/value` pair is created with `value` as the key and `key` as the value.

After method `each_with_object` finishes, it returns value of the object referenced by variable `hash`. 

#### Example 8

```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even
```

The code outputs `[1, 3]` and `[2]`.

On line `1`, local variable `odd` and variable `even` are simultaneously initialized to be the first and second element of the return value of method call `partition`. 

The method `partition` is called on array object `[1, 2, 3]` and a `do..end` block is passed to it as an argument with a parameter `num`. 

The method iterates through the array object passing value of each current element as `num` to the block as an argument and runs the block. The method also creates an array with two nested sub-arrays. If return value of the block evaluates to `true`, the current element is added to the first sub-array; otherwise, it is added to the second sub-array. 

In this case, line `2` in the block calls method `odd?` on object referenced by variable `num`. 

The method `partition` eventually returns `[[1, 3],  [2]`. Its first element `[1, 3]` is assigned to variable `odd` and second element `[2]` is assigned to variable `even`.

Last two lines call method `p` and pass variables `odd` and `even` to it as arguments respectively. Thus the code outputs `[1, 3]` and then `[2]`, and returns `[2]`

### Truthiness

#### Example 1

```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```

The code outputs `'Hello is truthy'` and returns `nil`.

on line `1`, a local variable `a` is initialized to string object `'Hello'`.

on line `3-7`, keyword `if/else` is used to create a conditional structure. On line `3`, conditional expression `a` is evaluated and  it evaluates to `true` since the value of variable `a` is neither `false` nor `nil`. Thus the `if` branch, line `4`, is executed, and rest of the branches are ignored.

on line `4`, method `puts` is called with string object `'Hello is truthy'` passed to it as an argument. The code outputs `'Hello is truthy'` and returns `nil`.

#### Example 2

```ruby
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
```

The code outputs `"Written assessment"` and then `"interview"`, it returns `nil`

on line `5`, variable `var` is initialized to the return value of method `test`; method `test` is called.

Within the method, line `2` calls method `puts` and passes string object `"Written assessment"` to it as an argument. The code outputs `"Written assessment"` and returns `nil`. 

The return value `nil` is then assigned to variable `var`

on line `9-11`, `if/else` keyword is used to create a conditional structure. on line `9`, conditional expression `var` is first evaluated to decide the execution of the flow. Since the value of object referenced by `var` is `nil`, the expression evaluates to `nil`. The `else` branch is executed.

Line `10` calls method `puts` and passes string object `"interview"` to it as an argument. The code outputs `"interview"` and returns `nil`.

# Daily Report 

@(Ruby)[13/06/2017|Do Hong Quan]
Ruby is a scripting language.
Today, I've learnt about some basic ruby concepts about syntax and control flow.

----------

[TOC]

## VARIABLES
There are 5 kinds of variables in Ruby.
### Global variables
- Begin with $. 
- Uninitialized global variables have the value nil and produce warnings with the -w option.
- Their scope of activity is throughout all programming.
Ex:
```
$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```
The result will be : 
"*Global variable in Class1 is 10*
*Global variable in Class2 is 10*"
### Local variables
- Local variables begin with a lowercase letter or _. 
- The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
- Ex:
```
local_variable = 'Toi nam ngoai method.'
def variable_scope
    puts local_variable = 'Toi nam trong method.'
end
variable_scope #Toi nam trong method
puts local_variable #Toi nam ngoai method
```

### Instance Variables:
- Instance variables begin with @. 
- Uninitialized instance variables have the value nil and produce warnings with the -w option.
- Their scope is in one object. Although the other object is created from the same class, it isn`t have the value of that variable.
```
class Nguoi

  def initialize(ten)
    @ten = ten
  end

  def show
    puts @ten
  end
end

first = Nguoi.new('Do')
first.show Do

second = Nguoi.new('Quan')
second.show # Quan
```
### Class Variables
- Class variables begin with @@ and must be initialized before they can be used in method definitions.
- With this kind of variable, the object can use that together, even they also can edit its value.
- Referencing an uninitialized class variable produces an error. Class variables are shared among descendants of the class or module in which the class variables are defined.
```
class Dog
  def initialize(leg)
    @@leg = leg
  end

  def show_leg
    puts @@leg
  end

end

first = Dog.new(4)
first.show_leg # 4

second = Dog.new(10)
second.show_leg # 10

first.show_leg # 10
```
###Constant
- Constants begin with an uppercase letter.
- Constants cannot modified. Their value will never change.
##METHOD
- The syntax:
```
def name_of_function(parameters)
  command
end
```
- notes: when you are not sure that how many parameter your function have, you can add the * at the beginning of your parameter name.

```
def name_of_function(*parameters)
  command
end
```

##LOOP
5 types of loop.
###For loop
Syntax:
```
for i in a..b
	command
end
```
With for loop, we will know how many loop we will have.
###While loop
Syntax:
```
while(conditions)
	command
end
```
In contrast with for loop, we won`t know how many loop we will have.
The program will check your conditions first, if it`s right, the program will continue to run your command in while loop. If it is false, the loop will break.
###.Times

###Until loop
Syntax:
```
until conditions
	command
end
```
The same with while loop, but while the condition is true, the program will break.
###Loop
Syntax:
```
loop
	command
	break if conditions
end
```
loop is also a unlimited loop. loop is break when the conditions is true 

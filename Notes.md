# Pragmatic Studio Ruby Blocks

## Questions

- when @ when not @ inside the class refering to class members

- why print, que es la segunda linea
`Flyer 2 - 2000`
`#<Flyer:0x0000000148910570>`

## Gotchas

- there is a slight difference between {} do end ,
// prints the enumerable , do the print and ignore the
orders.select puts do |o| o>90 end
// print the correct greater than 90.
orders.select puts {|o| o>90 }

- p => internal representation is different thatn puts=> to_s

- The select! and reject! methods (yes, the exclamation point is part of the method name) change the elements in the original array. By convention, methods that end with a bang (!) indicate that the method could do something dangerous or unexpected.

- to enable in a class all enumerable methods
    1- include Ebnumerable
    2- define an each method

- everything that runs is a method of a class
- self points to the instance you are currently are on ,
- self is the implicite receiver
  1- search for a variable , 2- explicit reciver 3- implicite reciever
example: puts "something" outside a method runs in 'main' wich class is 'object'
- last line of a method is the returned value, no need to write 'return' sometimes
- method default parameters can derive from other parameters
ex: def (title , rank=title.length)
    ----
    end
- a method without params dont need to be called with parenthesis
normalized_param can be a variable  or a method.
- virtual attribute is a method in a class that return a derive value from a member of a class.
class Algo
    ----
    @name = 'la'      //attribute
    def double_name   //virtual attribute
    @name+@name
    end
    ---
end
- require_relative 'fileName' -> include code that is in separate files same folder
- if __FILE__ == $0
 ...runs the block if we run only the file that contains this block

end

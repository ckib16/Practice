#Add Common hash and array methods to section

#Arrays
array = ["Bob", "Joe", "Fred"] #Create array

array.push("Tom")              #add to array - push method
array << "Jerry"               #add to array - shovel method

array[1]                 #Read array

array[3] = "Jimmy"             #Update new value to array position

array.delete("Jimmy")          #Delete value
array.delete_at(3)             #Delete position

#Hashes
hash = {age: 41, weight: 169, height: 6.0} #Create hash w/ symbols -new syntax (key: value)
hash_old = {:sign => 'gemini'}             #Create has w/ symbols -old syntax (:key => value)

hash[:gender] = "male"                     #add to hash

hash[:weight]                         #Read hash

hash[:weight] = 172                        #Update new value to a key

hash.delete(:height)                       #Delete key & value

#Iterators - the placeholder is used to hold each iterated value of the array (in this case) so that the logic can be used on it
array.each {|placeholder| puts placeholder}   #single line iterator
puts "--------------------------"
puts

array.each do |storage_variable|              #multiline iterator
  puts storage_variable
  puts "This is a multi-line iterator"
end

#Methods
def display(argument)         #Method with Argument
  puts argument
  puts "This is a method result"
end

display("Hello")              #Call method and pass in an argument

#Classes, objects, @instance_variables, @@class_variables, self.class_methods
class ExampleClass                   #start class

  attr_accessor :instance_variable   #setter/getter/variable

  def initialize(argument)           #initialize with argument
    @instance_variable = argument    
  end
end                                  #end class

module Mixable                       #create module
  puts "This is a amodule"
end

class Subclass < ExampleClass        #add subclass thru inheritance & mix-in module
  include Mixable
end

class GoodDog                        #add third class
  @@number_of_dogs = 0               #add class variable as a class "counter"
  DOG_YEARS = 7                      #add constant

  attr_accessor :name, :age          #add variables/getter/setter

  def initialize(n, a)               #initialize class
    self.name = n
    self.age = a * DOG_YEARS         #instance variables
    @@number_of_dogs += 1            #class variable
  end

  def self.total_number_of_dogs      #def class method
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0 call class method

dog1 = GoodDog.new                  #create object of 3rd class

puts GoodDog.total_number_of_dogs   # => 2 call class method again


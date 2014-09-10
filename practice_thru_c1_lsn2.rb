# Practice file for Ruby Syntax. Use in IRB or in a script.

#    Arrays
#Create array
#add to array - push method
#add to array - shovel method
#add to array - specific index method; will create 'nil' values in skipped indexes as needed
#Read array
#Update new value to array position
#Delete value
#Delete position
#Delete last value in array

#    Hashes
#Create hash w/ symbols -new syntax (key: value)
#Create has w/ symbols -old syntax (:key => value)
#Add new key/value to hash
#Read hash value via its key
#Update key value to a new value
#Delete key & value

#    Iterators
#Iterators - the placeholder is used to hold each iterated value of the array (in this case) so that the logic can be used on it
#single line iterator
#multiline iterator

#    OOP & Classes
#Define Methods
#Call method and pass in an argument

#Classes, objects, @instance_variables, @@class_variables, self.class_methods
#start class

#setter/getter/variable
#initialize with argument
#end class

#create module

#add subclass thru inheritance & mix-in module

#add third class
#add class variable as a class "counter"
#add constant

#add variables/getter/setter

#initialize class
#instance variables
#class variable

# => 0 call class method
#create object of 3rd class
# => 2 call class method again


#
#   ANSWERS
#

#Arrays
array = ["Bob", "Joe", "Fred"] #Create array

array.push("Tom")              #add to array - push method
array << "Jerry"               #add to array - shovel method
array[5] = "Larry"             #add to array - specific index method; will create 'nil' values in skipped indexes as needed

array[1]                 #Read array

array[3] = "Jimmy"             #Update new value to array position

array.delete("Jimmy")          #Delete value
array.delete_at(3)             #Delete position
array.pop                      #Delete last value in array

#Array Methods
array.include?(argument)       #checks to see if argument given is in the array
array.flatten #take an array that contains nested arrays and create a one-dimensional array
array.each #each method iterates through the array with the variable representing the value at each index.
array.each_index { |i| puts "This is index #{i}" } #each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.
array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" } #each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code. The first is the value and the second is the index. You can then use them in the block.
array.sort #The sort method is a handy way to order an array. It returns a sorted array.
array.product([4, 5]) #The product method can be used to combine two arrays in an interesting way. It returns an array that is a combination of all elements from all arrays.

#Hashes
hash = {age: 41, weight: 169, height: 6.0} #Create hash w/ symbols -new syntax {key: value}
hash_old = {:sign => 'gemini'}             #Create has w/ symbols -old syntax {:key => value}

hash[:gender] = "male"                     ##Add new key/value to hash

hash[:weight]                              #Read hash

hash[:weight] = 172                        #Update new value to a key

hash.delete(:height)                       #Delete key & value

#Hash methods
hash.merge!(other_hash) #merges two hashes together. Bang optional to make destructive
hash.has_key?(argument) #has_key? method allows you to check if a hash contains a specific key. It returns a boolean value.
hash.select { |k,v| k == :key } #The select method allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block.
hash.fetch(:key) #The fetch method allows you to pass a given key and it will return the value for that key if it exists. You can also specify an option for return if that key is not present. Take a look at the Ruby docs to see what else is possible.
hash.to_a #The to_a method returns an array version of your hash when called.
hash.keys #See .values
hash.values #retrieve all the keys or values out of a hash. Because it returns an array, you can do interesting things like printing out all the keys in a hash: hash.keys.each { |k| puts k }

#Iterators - the placeholder is used to hold each iterated value of the array (in this case) so that the logic can be used on it
array.each {|placeholder| puts placeholder}   #single line iterator
puts "--------------------------"
puts

hash.each do |storage_variable1, storage_variable2|              #multiline iterator
  puts "This is a multi-line iterator with a hash showing key #{storage_variable1} and value #{storage_variable2}"
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


# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
# goodbye
# Takes one string as an arg (a name)
# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'
class Greeter
  attr_accessor :name
  def hello(name)
    "Hello, #{name}"
  end
  def goodbye(name)
    "Goodbye, #{name}"
  end
  def goodnight(name)
    "Goodnight, #{name}"
  end
  def goodmorning(name)
    "Goodmorning, #{name}"
  end
end

# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket
class Basket
  attr_accessor :list
  def initialize
    @list = []
  end

  def add(item)
    @list << item
  end
  def items
    @list
  end
end
# Basket2
# add
# takes two arguments: a string for the item and a number for the amount of that item
# adds both pieces of information to a list of items
# contents
# returns everything that has been added to the basket
# eg: after having added "carrots", 3
# contents returns [{"item" => "carrots", "amount" => 3}]
class Basket2
  attr_accessor :list
  def initialize
    @list = []
  end
  def add(item,amount)
    @list << {"item" => item, "amount" => amount}
  end
  def contents
    @list
  end
end
# Calculator
# add
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
# history
# takes no args
# returns an array containing hashes of the operation, arguments and results of all previous calculations
# eg: after multiplying 4 and 6, the history is 
# [{"operation" => "multiply", "arguments" => [4, 6], "result" => 24}]
class Calculator
  def initialize
    @history = []
  end
  def add_to_history_return_result(operation, n1, n2, result)
    @history << {"operation" => operation.to_s, "arguments" => [n1, n2],"result" => result}
    return result
  end
  def add(n1,n2)
    result = n1+n2
    add_to_history_return_result(__method__, n1, n2, result)
  end
  def multiply(n1,n2)
    result = n2*n1
    add_to_history_return_result(__method__, n1, n2, result)
  end
  def subtract(n1,n2)
    result = n1-n2
    add_to_history_return_result(__method__, n1, n2, result)

  end
  def divide(n1,n2)
    result = n1/n2
    add_to_history_return_result(__method__, n1, n2, result)

  end
  def history
    @history
  end
end
# Cohort
# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
# returns all the students who have been added to the cohort
# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer
class Cohort
  attr_accessor :students
  def initialize
    @students = []
  end
  def add_student(hash)
    @students << hash
  end
  def students
    @students
  end
  def employed_by(employer)
    print @students
    return @students.select{|value| value["employer"] == employer}
  end

end
# Person
# is initialized with a complex hash, for example...
{
  'name' => 'alex',
  'pets' => [
    {'name' => 'arthur', 'animal' => 'cat'},
    {'name' => 'judith', 'animal' => 'dog'},
    {'name' => 'gwen', 'animal' => 'goldfish'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '50', 'street' => 'Commercial Street'},
    {'name' => 'home', 'building' => '10', 'street' => 'South Street'}
  ]
}

# employer
# takes no args
# returns the work address in a nice format
# E.g. '50 Commercial Street'
# home_address
# takes no args
# returns the home address in a nice format
# E.g. '10 South Street'
# pets
# takes no args
# returns a nice summary of the person's pets

# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen
#
class Person
  attr_accessor  :name, :work_address, :home_address, :pets
  def get_address_hash(hash,address_type)
    hash['addresses'].select{|value| value["name"] == address_type}.first.reject{|key,value| key == "name"}.values.join(" ")
  end

  def initialize(hash)
    @name = hash['name'].to_s
    @work_address = get_address_hash(hash,"work")
    @home_address = get_address_hash(hash,"home")
    @pets = "#{@name} has #{hash["pets"].length} pets" + "\n" + hash["pets"].map { |animal| "- a #{animal["animal"]} called #{animal["name"]}"}.join("\n") + "\n"
  end
  def employer
    @work_address
  end
  def home_address
    @home_address
  end
  def pets
    @pets
  end
end
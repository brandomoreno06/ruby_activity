#ENCAPSULATION

class Address
  def initialize(city, province)
    @city = city
    @province = province
  end

  #allow only the public method below to access the attributes of the defined class. Attrubutes cannot be accessed outside the instances.
  def address
    puts "Your address is #{@city}, #{@province}"
  end
end

address_1 = Address.new("Guagua", "Pampanga")
address_1.address



#ABSTRACTION

class PlayGame
  #access private methods here. this method doesn't need to know the process of the other methods.
  def play
    open_phone
    open_app
    start_game
  end

  private
  def open_phone
    puts "Phone is opened."
  end

  private
  def open_app
    puts "App is opened."
  end

  private
  def start_game
    puts "Game has started."
  end
end

PlayGame.new.play







#POLYMORPHISM - INHERITANCE
class Animal
  def initialize(type)
    @type = type
  end

  def speak
    "#{@type} is speaking"
  end
end

class Cat < Animal
  def speak  #speak method inherits that of the parent, but is overriden with the same "speak" method of this subclass 
    puts super + ": Meow" #super inherits the "speak" method of the parent class
  end
end

Cat.new("cat").speak



#POLYMORPHISM - DUCK-TYPING
class Person
  def type(person) #pass the parameter "person"(an object with method type)
    puts "I am a #{person.type}." #the type method of the parameter "person" is used.
  end
end


class Teacher
  def type()
    "teacher"
  end
end

class Student
  def type()
    "student"
  end
end

person_1 = Person.new
teacher = Teacher.new
person_1.type(teacher)

student = Student.new
person_1.type(student)
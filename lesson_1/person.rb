class Person
    def initialize(name, age, address)
        @name = name
        @age = age
        @address = address
    end

    def details
        puts "Hi #{@name}! Your age is #{@age}, and your address is #{@address}."
    end
end

person_1 = Person.new("Juan", 21, "Ottawa, Canada")
person_1.details
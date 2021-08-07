#SINGLE RESPONSIBILITY PRINCIPLE

#This principle has only one responsibility, which is to receive details from the user.
#It does not need to define the process of, for instance, verification of email address(done on another class).

class CreateAccount
  def get_email
    # enter email address
  end

  def get_password
    #enter password
  end
end




#OPEN/CLOSED PRINCIPLE
class CreateAccount
  def get_email
    # enter email address
  end

  def get_password
    #enter password
  end
end

#Class CreateAccount has a single responsibility, which is to receive inputs
#Here, the Validate class extends its SuperClass, and performs the validation process.
#Any the SuperClass remain unaffected even if validation methods are changed.
class Validate < CreateAccount
  def email
    #validation checks
  end

  def password
    #validation checks
  end
end




#LISKOV PRINCIPLE

class Animal
  def speak
    puts "Animal speaks"
  end
end


class Cat <  Animal
  def speak
    puts "Cat meows"
  end
end

cat_1 = Animal.new.speak
cat_1 = Cat.new.speak 
#the second one will return "Cat Meow". 
#Even if method "speak" is removed from subclass, it will return "Animal Speaks".
#No break in code as the super and sub classes' speak method accepts and returns the same type of object



#INTERFACE PRINCIPLE

class Store
  def buy(type)
    PaymentProcessor.new.pay(type) #See B. for dependency
  end
end

#this is the interface class. Curernt type of payment is "Paypal".
#Even if other type of payment is added, superclass "Store" will remain unaffected because it calls only the interface class form it's method "buy"
class PaymentProcessor
  def pay(type)
    type.makePayment
  end
end


#B .This will be the depency class. It will not affect the "Store Class" even if new payment type is added of this current type is modified.
class Paypal
  def makePayment
    puts "Paid with Paypal"
  end
end
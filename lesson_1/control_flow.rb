#1 Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number
  puts true
end


#2 Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100

# def enter_a_number()
#     puts "Enter a number"
#     num = gets.chomp.to_i
#     range_1 = 0..50
#     range_2 = 50..100
#     if range_1 === num
#         puts "#{num} is between 0 and 50"
#     elsif range_2 === num
#         puts "#{num} is between 51 and 100"
#     elsif num > 100
#         puts "#{num} is above 100"
#     else
#         puts "#{num} is not on the category"
#     end
# end


# enter_a_number()


#3 Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
    
# a = ""
# while (a != "STOP") do
#     puts "ENTER ANYTHING"
#     a = gets.chomp
# end


# 4. Below we have given you an array and a number. Write a program that checks to see if the number is divisible by 2 and store them into a new array.

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_array = []

arr.each do |num|
    if (num % 2 == 0) 
        new_array.push(num)
    end
end

puts new_array





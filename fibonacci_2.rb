

a = [1,1] #Starting point of fibonacci sequence as an array

limit = 4_000_000 #Just setting a var = to our limit

while a[-1] < limit  #This is saying that while the last number in the array < 4,000,000
	a << a[-2] + a[-1] #This is saying to add the sum of the last two values in a to a
end

sum = 0 #--> Start at zero

a.each {|x| sum += x if (x%2==0)} # AFTER the loop has run and the array filled, add each element to the sum if the element is even

puts "The answer is #{sum}"

# ANSWER: 4613732
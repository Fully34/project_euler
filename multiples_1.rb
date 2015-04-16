=begin
	
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.	


FORGOT TO SUBTRACT ALL OF THE DUPLICATE VALUES: IE - 15, 30, ETC...

=end

range = (1..999).to_a

arr_3 = range.select{|num| num%3 ==0}
arr_5 = range.select{|num| num%5 ==0}

y=0
sum_mult_3 = arr_3.each{|x| y = y + x}
sum_mult_5 = arr_5.each{|x| y = y + x}


range_intersect = range.select{|x| x%3==0 && x%5==0}

z = 0
intersection = range_intersect.each{|x| z=z+x}

puts y-z

# ANSWER = 233168

=begin | MUCH BETTER ANSWER
	
y = 0
(1..999).each { |x| y = y + x if (x % 3 == 0) || (x % 5 == 0) }
puts y

=end
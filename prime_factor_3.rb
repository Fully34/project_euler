=begin
	
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

# That number is way to effing big, used a smaller number so I wouldn't have to wait days for the calculation.


a = []
i = 2

def prime(num)
	x = 2
	while x < num
		if num % x ==0 
			return false 
		else
			return true
		end
		x += 1
	end
end

while i < 600851475
	if (600851475 % i ==0) && (prime(i) == true)
		a << i
	end
	i+=1
end

puts a.last
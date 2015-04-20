=begin
	
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

def prime(num)
	prime = true
	if num < 2
		return false
	elsif num != num.floor
		return false
	end

	for i in 2...num
		if num%i == 0
			return false
		end
		i += 1
	end
	return prime
end


def ten_th_prime
count = 0
x = 1
	while x > 0
		if prime(x) == true
			count += 1
			if count == 10_001
				puts x
				break
			end
		end
		x += 1
	end
end

ten_th_prime

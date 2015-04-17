=begin
	
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 
9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end


#define palindrome




def pal(num)
	palindrome = nil
	num = num.to_s
	arr_pally = []
	if (num == num.reverse)
		palindrome = true
		arr_pally << num
	else
		palindrome = false
	end
	arr_pally
end


def combo
	y = (100..999).to_a
	a = 100
	while (a < 1000)
		y.each do |x|
			z = x * a
			puts pal(z)
			end
		a += 1
	end
end

combo

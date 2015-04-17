

def pal(num)
	num = num.to_s
	num == num.reverse
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


a_pal = []

if pal(combo) == true
	a_pal << combo
end

a_pal

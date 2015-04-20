=begin
	
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product of abc.

=end

def pythag(a,b,c) # DON'T NEED TO TEST PYTHAG B/C WE HAVE EUCLID'S FORMULA TO GENERATE KNOWN PYTHAG TRIPLES
				  # But sweet logic, bro
	if (a**2) + (b**2) == (c**2)
		return true
	else
		return false
	end
end


#DEFINING EUCLID'S FORMULA TO GENERATE TRIPLES

def euclids(upto) # WHY DOES THIS WORK!?  WHAT IS HAPPENING HERE!? --> I think I've got it now.
	
	result = [] #EMPTY ARRAY TO SHOVEL SHIT INTO

	(2..upto).each do |m| #Treats each term in the 'upto' range as 'm'
		puts "m:#{m}" #Shows each 'm' value when it is started

		(1...m).each do |n| # Euclid's only works for 'm' > 'n'.  This statement treats each m as a sub-range of 'upto' and iterates from 1 to m-1 for each 'm' value
			puts "\tn:#{n}" #Shows each 'n' value indented when it is started
			result << [(m**2) - (n**2), 2*m*n, (m**2) + (n**2)]

=begin
As 'm' increases, we get an additional 'n' value to run. 
'n' always resets to 1 as 'm' is increasing. 

Think of it as 'n' = for loop inside of 'm' for loop
m=2, n=1 --> [3, 4, 5] 
m=3, n=1 --> [8, 6, 10] 
m=3, n=2 --> [5, 12, 13]
m=4, n=1 --> [15, 8, 17]
m=4, n=2 --> [12, 16, 20]
m=4, n=3 --> [7, 24, 25]	
m=5, n=1 --> [24, 10, 26] 
m=5, n=2 ...
m=5, n=3 ...
m=5, n=4 ...
m=6, n=1 ...

=end

		end
	end
	result
end


x = 1000 #Don't really need this either, just for the quickness. 
		
euclids(x/2).each do |triple|
	a = triple[0]
	b = triple[1]
	c = triple[2]
	# CAN ALSO DO: a, b, c = triple[0], triple[1], triple[2] to achieve the same thing on one line!
	
	if (a + b + c == x)&&pythag(a,b,c)
		puts "a: #{a}, b: #{b}, c: #{c}" + " product: " + (a*b*c).to_s
		break
	end
end

def nbr
	puts"Lance le dé"
	n= rand (1..6)
end

def action(n,i)
case n
	when 1
	 	i = -1
	 	puts "Descends d'une marche"
	when 2, 3, 4
	 	i = 0
	 	puts"Reste où tu es"
	else
	 	i=1
	 	puts "Monte d'une marche"
end
puts "Tu dois faire #{i} pas"
return i
end

action
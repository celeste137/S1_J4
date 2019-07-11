def ask_nbr_etages
  puts "Visiteur ! Veux-tu voir un truc cool ?"
  puts "Choisi un nombre impair entre 1 et 30 "
  print ">"
  nbr_etages = gets.chomp.to_i
  while (nbr_etages < 1) or (nbr_etages >25) or (nbr_etages%2==0)
      puts"Nope. Impair. Entre 1 et 30..."
      print ">"
      nbr_etages = gets.chomp.to_i
    end
  return nbr_etages
end


def half_pyramide(nbr_etages)
  i = 0
  while i <= nbr_etages
      puts " "*(nbr_etages - i) + "#"*i
  i += 1
  end
  puts ""
  puts "Tadaa !"
end


def full_pyramid(nbr_etages)
  i = 1
  while i <= nbr_etages
    puts " "*(nbr_etages-i)+"#"*(2*i-1)
    i += 1
  end
end

def full_pyramidiv(nbr_etages)
  i = nbr_etages - 1
  while i > 0
    puts " "*(nbr_etages-i)+"#"*(2*i-1)+" "*(nbr_etages-i)
    i -= 1
  end
end


def wtf_pyramid(nbr_etages)
  m = (nbr_etages+1)/2
  
  full_pyramid(m) 
  full_pyramidiv(m)
end

wtf_pyramid(ask_nbr_etages)







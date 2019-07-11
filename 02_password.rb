def signup
  puts "Hello. Get a password."
  print ">"
  return gets.chomp
end

def login
  $mdp = signup
  puts "Hello. Enter your password."
  print ">"
  password = gets.chomp
  while password != $mdp
    puts "Wrong password. Please retry."
    password = gets.chomp
  end
end

def welcome_screen
  puts "-- WELCOME IN THE WARP ZONE --"
  puts "----------------"
  puts "4 8 15 16 23 42"
  puts "----------------"
  puts "19,5 billion US$ on Elon Musk bank account"
  puts "----------------"
  puts "His bank account number is"
  puts "#{$mdp}"
end

def perform
  login
  welcome_screen
end

perform

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a = Customer.new('firstname', 'lastname')
b = Customer.new('Chance', 'mims')
c = Customer.new('fname2', 'lname2')

d = Restaurant.new('place')
e = Restaurant.new('other')
f = Restaurant.new('eat')


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tom_tobar = Customer.new("Tom", "Tobar")
sushi_nini = Restaurant.new("Sushi NiNi")
tom_sn_rev = Review.new(tom_tobar,sushi_nini,10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
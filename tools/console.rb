require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gavin = Customer.new("Gavin","Whitlock")
chilis = Restaurant.new("Chilis")
gc_review = Review.new(gavin,chilis,5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
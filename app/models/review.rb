class Review

    @@all = []

    attr_reader :rating, :customer, :restaurant

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = check_rating(rating)
        customer.reviews << self
        restaurant.reviews << self
        @@all << self
    end

    def check_rating(rating)
        rating < 0 ? rating = 0 : rating
        rating > 5 ? rating = 5 : rating
        rating.to_f
    end

    def self.all
        @@all
    end
  
end
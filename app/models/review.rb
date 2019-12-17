class Review

    attr_accessor :customer, :restaurant, :rating

    @@all = []

    def initialize(customer,restaurant,rating)
        @customer = customer
        @restaurant = restaurant
        @rating = 0
        @@all << self
    end

    def self.all
        @@all
    end

end
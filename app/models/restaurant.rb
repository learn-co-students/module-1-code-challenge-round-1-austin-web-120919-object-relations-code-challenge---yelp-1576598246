class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    self.name
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect{|review| review.customer}.uniq
  end

  def average_star_rating
    all_reviews = self.reviews
    avg_rating = all_reviews.average
    avg_rating
  end

end

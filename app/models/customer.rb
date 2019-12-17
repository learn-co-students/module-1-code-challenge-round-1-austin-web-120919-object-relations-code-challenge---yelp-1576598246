class Customer

  @@all = []

  attr_accessor :given_name, :family_name, :reviews

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
   # "review submitted!" less clutter when init
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name(name)
    self.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find_all{|customer| customer.given_name == name}
  end

  def self.all
    @@all
  end

end

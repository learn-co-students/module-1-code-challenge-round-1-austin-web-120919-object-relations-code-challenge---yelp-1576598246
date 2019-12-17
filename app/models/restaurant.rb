class Restaurant

  attr_reader :name, :reviews

  def initialize(name)
    @name = name
    @reviews = []
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    "#{self.name} has #{(self.get_average_stars.round(1))} average stars."
  end

  def get_average_stars
    (self.total_stars / reviews.length).to_f
  end

  def total_stars
    self.reviews.map{|review| review.rating}.reduce(:+)
  end

end

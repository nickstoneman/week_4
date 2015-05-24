class Stock
  attr_accessor :company, :price

  # def initialize(options={})
  #   @company = options[:company]
  #   @price = options[:price]
  # end

  def to_s
    "#{company}: #{price}"
  end

  # animal1 = Animal.new({
  # name: 'Fluffy',
  # age: 5,
  # gender: 'male',
  # species: 'dog'
  # })

end
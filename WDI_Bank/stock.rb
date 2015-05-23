class Stock
  attr_accessor :company, :price

  def to_s
    "#{company}: #{price}"
  end

end
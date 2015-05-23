require_relative 'stock'

class Client
  attr_writer :client_name, :client_balance
  attr_reader :stocks #phone_numbers

  def initialize
    @stocks = []
    #phone_numbers
  end

  # Takes the name and price of a stock
  # attr_accessor :company, :price
  def add_stock_to_account(company, price)
    stock = Stock.new
    stock.company = company
    stock.price = price
    stocks.push(stock)
  end
  
  def client_name
    @client_name
  end

  def client_balance
    @client_balance
  end

  def client_details
    "#{client_name} has a balance of $#{client_balance}."
  end

  def print_client_holdings
    puts "Stocks held:"
    stocks.each { |stock| puts stock }
  end

  def print_client_total
    puts "Total of all stocks held: "
    # add up every odd number in array
  end

    # delete client total from balance

nick = Client.new
nick.client_name = "Nick Stoneman"
nick.client_balance = 10000
puts nick.client_details
nick.add_stock_to_account("Amazon", "300")
nick.add_stock_to_account("Barclays", "200")
nick.print_client_holdings
nick.print_client_total

end
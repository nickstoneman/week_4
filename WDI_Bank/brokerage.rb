require_relative 'client'
require_relative 'stock'

class Brokerage
  attr_reader :client_name, :client_balance, :stocks

  def initialize
    @stocks = []
    @clients = []
  end

  def add_stock_to_account(company, price)
    stock = Stock.new
    stock.company = company
    stock.price = price
    stocks.push(stock)
  end

  def add_client_to_account(client, balance)
    client = Client.new
    client_name = client
    client_balance = balance
    clients.push(client)
  end

  def print_client_list
    clients.each do |client|
    puts client.to_s('client_details')
  end
  
  # brokerage = Brokerage.new
  # nick.client_name = "Nick Stoneman"
  # nick.client_balance = 10000
end

nick = Client.new
nick.client_name = "Nick Stoneman"
nick.client_balance = 10000
nick.add_stock_to_account("Amazon", 300)
nick.add_stock_to_account("Barclays", 200)
nick.add_stock_to_account("Ford", 15)

nick.client_details
nick.print_client_holdings
nick.print_client_total


jane = Client.new
jane.client_name = "Jane Doe"
jane.client_balance = "2500"
jane.add_stock_to_account("Tesco", 3)
jane.add_stock_to_account("BMW", 560)
jane.add_stock_to_account("GE", 23)

jane.client_details
jane.print_client_holdings
jane.print_client_total

end
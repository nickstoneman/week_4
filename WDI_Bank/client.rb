require 'pry'
require_relative 'stock'

class Client
  attr_writer :client_name, :client_balance
  attr_reader :stocks

  def initialize
    @stocks = []
  end

  
  #Adding animals into the shelter
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
    puts "#{client_name} has a balance of $#{client_balance}."
  end

  def print_client_holdings
    puts "Stocks held..."
    stocks.each { |stock| puts stock }
  end

# This is killing me here....
  def print_client_total
    puts "Total of all stocks held: "
    # odd = stocks.select.each_with_index { |str, i| i.even? } 
    # puts stocks.price
    # puts Hash[*stock_splits = stocks.map { |x| x.to_s.split(' ') }]
    # puts Hash[*stocks]
  end








end
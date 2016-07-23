require_relative 'product'

class Coffee < Product
  attr_reader :name
  attr_accessor :price

  def initialize(code)
    @name = NAME
    @price = PRICE
    super
  end

  private
  NAME = 'Coffee'
  PRICE = 11.23
end
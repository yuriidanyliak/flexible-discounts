require_relative 'product'

class Coffee < Product
  attr_reader :name, :price

  def initialize
    @name = NAME
    @price = PRICE
    super()
  end

  private
  NAME = 'Coffee'
  PRICE = 11.23
end
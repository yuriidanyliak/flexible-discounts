require_relative 'product'

class FruitTea < Product
  attr_reader :name, :price

  def initialize(code)
    @name = NAME
    @price = PRICE
    super
  end

  private
  NAME = 'Fruit Tea'
  PRICE = 3.11
end
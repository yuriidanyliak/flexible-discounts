require_relative 'product'

class Strawberry < Product
  attr_reader :name, :price

  def initialize
    @name = NAME
    @price = PRICE
    super()
  end

  private
  NAME = 'Strawberries'
  PRICE = 5.00
end
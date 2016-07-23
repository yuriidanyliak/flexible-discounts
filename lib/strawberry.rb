require_relative 'product'

class Strawberry < Product
  attr_reader :name
  attr_accessor :price

  def initialize(code)
    @name = NAME
    @price = PRICE
    super
  end

  private
  NAME = 'Strawberries'
  PRICE = 5.00
end
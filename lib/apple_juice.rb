require_relative 'product'

class AppleJuice < Product
  attr_reader :name
  attr_accessor :price

  def initialize(code)
    @name = NAME
    @price = PRICE
    super
  end

  private
  NAME = 'Apple Juice'
  PRICE = 7.25
end
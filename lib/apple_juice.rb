require_relative 'product'

class AppleJuice
  attr_reader :name, :price

  def initialize
    @name = NAME
    @price = PRICE
    super()
  end

  private
  NAME = 'Apple Juice'
  PRICE = 7.25
end
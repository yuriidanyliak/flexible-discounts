require_relative 'base'

class Products::AppleJuice < Products::Base
  attr_accessor :price

  def initialize(code)
    @price = 7.25
    super
  end

  def name
    'Apple Juice'
  end
end
require_relative 'base'

class Products::FruitTea < Products::Base
  attr_accessor :price

  def initialize
    @price = 3.11
    super
  end

  def name
    'Fruit Tea'
  end

  def code
    'FR'
  end
end
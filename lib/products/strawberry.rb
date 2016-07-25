require_relative 'base'

class Products::Strawberry < Products::Base
  attr_accessor :price

  def initialize
    @price = 5.00
    super
  end

  def name
    'Strawberries'
  end

  def code
    'SR'
  end
end
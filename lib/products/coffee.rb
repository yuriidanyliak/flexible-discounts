require_relative 'base'

class Products::Coffee < Products::Base
  attr_accessor :price

  def initialize
    @price = 11.23
    super
  end

  def name
    'Coffee'
  end

  def code
    'CF'
  end
end
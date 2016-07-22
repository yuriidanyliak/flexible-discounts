require 'active_support/all'
require_relative 'fruit_tea'
require_relative 'strawberry'
require_relative 'coffee'
require_relative 'apple_juice'

class Checkout

  def initialize
    @scanned_products = []
  end

  def scan(product_type)
    @scanned_products << PRODUCT_TYPES[product_type.to_sym].constantize.new
  end

  def total
    @scanned_products.map(&:price).inject(:+)
  end

  private

  PRODUCT_TYPES = {
      FR: 'FruitTea',
      SR: 'Strawberry',
      CF: 'Coffee',
      AJ: 'AppleJuice'
  }
end

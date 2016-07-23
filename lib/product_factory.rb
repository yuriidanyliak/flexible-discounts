require 'active_support/all'
require_relative 'fruit_tea'
require_relative 'strawberry'
require_relative 'coffee'
require_relative 'apple_juice'

class ProductFactory
  class << self
    def create_by_code(product_code)
      PRODUCT_TYPES[product_code.to_sym].constantize.new(product_code)
    end
  end

  private

  PRODUCT_TYPES = {
      FR: 'FruitTea',
      SR: 'Strawberry',
      CF: 'Coffee',
      AJ: 'AppleJuice'
  }
end
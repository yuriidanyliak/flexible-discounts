require 'active_support/all'
require_relative '../products/fruit_tea'
require_relative '../products/strawberry'
require_relative '../products/coffee'
require_relative '../products/apple_juice'

module Factories
  class ProductFactory
    class << self
      def create_by_code(product_code)
        "Products::#{PRODUCT_TYPES[product_code.to_sym]}".constantize.new(product_code)
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
end
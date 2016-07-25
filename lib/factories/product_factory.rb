require 'active_support/all'
require_relative '../products/fruit_tea'
require_relative '../products/strawberry'
require_relative '../products/coffee'
require_relative '../products/apple_juice'

module Factories
  class ProductFactory
    class << self
      def create_by_code(product_code)
        PRODUCT_TYPES[String(product_code)].new
      end
    end

    private

    PRODUCT_TYPES = {
        "FR" => Products::FruitTea,
        "SR" => Products::Strawberry,
        "CF" => Products::Coffee,
        "AJ" => Products::AppleJuice
    }.freeze
  end
end

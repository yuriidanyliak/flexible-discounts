require_relative 'factories/product_factory'
require_relative 'presenters/invoice_presenter'

class Checkout
  def initialize(*offer_rules)
    @scanned_products = []
    @offer_rules = Array(offer_rules)
  end

  def scan(product_code)
    scanned_products << Factories::ProductFactory.create_by_code(product_code)
  end

  def total
    Presenters::InvoicePresenter.new(summary).price_with_dollar_sign
  end

  def reset_scanner
    scanned_products.clear
  end

  private

  attr_accessor :scanned_products
  attr_reader :offer_rules

  def summary
    apply_discount
    total_cost
  end

  def apply_discount
    offer_rules.each do |rule|
      rule.call(scanned_products)
    end
  end

  def total_cost
    scanned_products.map(&:price).inject(:+)
  end
end

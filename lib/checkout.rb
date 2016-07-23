require_relative 'product_factory'
require_relative 'invoice_presenter'

class Checkout

  def initialize(*offer_rules)
    @scanned_products = []
    @offer_rules = *offer_rules
  end

  def scan(product_code)
    @scanned_products << ProductFactory.create_by_code(product_code)
  end

  def total
    InvoicePresenter.new(summary).price_with_dollar_sign
  end

  private

  def summary
    @scanned_products.map(&:price).inject(:+)
  end
end

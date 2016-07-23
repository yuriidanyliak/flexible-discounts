class Product
  attr_reader :currency, :product_code

  def initialize(code)
    @code = code
    @currency = CURRENCY
  end

  def name
    raise NotImplementedError
  end

  def price
    raise NotImplementedError
  end

  private
  CURRENCY = 'USD'
end
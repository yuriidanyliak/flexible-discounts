class Product
  attr_reader :currency

  def initialize
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
module Products
  class Base
    attr_reader :currency, :code

    def initialize(code)
      @code = code
      @currency = 'USD'
    end

    def name
      raise NotImplementedError
    end

    def price
      raise NotImplementedError
    end
  end
end
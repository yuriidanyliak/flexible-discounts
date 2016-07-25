module Products
  class Base
    attr_reader :currency

    def initialize
      @currency = 'USD'
    end

    def name
      raise NotImplementedError
    end

    def price
      raise NotImplementedError
    end

    def code
      raise NotImplementedError
    end
  end
end
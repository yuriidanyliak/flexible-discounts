module Presenters
  class InvoicePresenter
    def initialize(summary)
      @summary = summary
    end

    def price_with_dollar_sign
      "$ #{summary}"
    end

    def price_with_letter_code
      "#{summary} USD"
    end

    private

    attr_reader :summary
  end
end

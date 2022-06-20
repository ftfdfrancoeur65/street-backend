class Loan < ApplicationRecord
  def monthly_interest_amount
    # A lot of ways to handle this better
    # First, need to make interest_amounts a first class object
    # interest_amount would correspond to a specific time period (start_on, end_on)
    # the underlying conditions of a loan (eg interest_rate) may change which means we need
    # to write interest_amounts when this returns
    InterestCalculator.new.call(self, 1)
  end

  def as_json(options = {})
    super options.merge(methods: [:monthly_interest_amount])
  end
end

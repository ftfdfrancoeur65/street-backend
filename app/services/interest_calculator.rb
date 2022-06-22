class InterestCalculator
  MONTHS_IN_YEAR = 12

  def initialize
  end

  def call(loan, number_of_months)
    interest = loan.interest_rate * loan.amount / MONTHS_IN_YEAR * number_of_months
    interest.round(2)
  end

end
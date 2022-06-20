class InterestCalculator
  
  def initialize
  end

  def call(loan, number_of_months)
    loan.interest_rate * loan.amount / MONTHS_IN_YEAR * number_of_months
  end

end
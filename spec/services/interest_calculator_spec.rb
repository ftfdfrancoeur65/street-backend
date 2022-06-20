require "rails_helper"

describe InterestCalculator do
  let(:loan){ create(:loan)}
 
  describe "#call" do
    it "returns the correct interest amount" do
      calculator = InterestCalculator.new
      interest_amount = calculator.call(loan, 1)
      expect(interest_amount).to eq(50)
    end
  end
end

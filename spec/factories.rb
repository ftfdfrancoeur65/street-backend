FactoryBot.define do
  
  factory :loan do
    amount {20_000}
    interest_rate {0.03}
    loan_term_in_months {24}
  end
end
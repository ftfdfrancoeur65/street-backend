class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.decimal :amount, precision: 8, scale: 2
      t.decimal :interest_rate, precision: 8, scale: 5
      t.integer :loan_term_in_months
      t.timestamps
    end
  end
end

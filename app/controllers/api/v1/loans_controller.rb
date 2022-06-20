class Api::V1::LoansController < ApplicationController
  

  # POST /deals/1/construction-draws.json
  def create
    @loan = Loan.build(loan_params)
    if @loan.save!
      render json: @loan
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  def show
    @loan = Loan.find(params[:id])
    render json: @loan, status: :ok
  end

  # PATCH/PUT /construction-draws/1.json
  def update
    @loan = Loan.find(params[:id])
    if @loan.update!(loan_params)
      render json: @loan
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  private


  def loan_params
    params.require(:loan).permit(:amount, :interest_rate, :loan_term_in_months)
  end
end

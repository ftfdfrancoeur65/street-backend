class Api::V1::LoansController < ApplicationController
  


  def index
    @loans = Loan.all
    # Bad, always want to paginate, just for mvp
    render json: @loans, status: :ok
    
  end

  def create
    @loan = Loan.new(loan_params)
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

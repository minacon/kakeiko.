class IncomesController < ApplicationController
  def index
    @incomes = Income.order(created_at: :asc)
  end

  def new
    @income = Income.new
  end

  def create
    
  end

  def show
    @income = Income.find(params[:id])
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end

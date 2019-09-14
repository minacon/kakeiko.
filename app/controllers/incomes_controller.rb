class IncomesController < ApplicationController
  def index
    @incomes = Income.order(created_at: :asc)
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income, notice: '収入項目を登録しました'
    else
      redirect_to action: :new
    end
  end

  def show
    @income = Income.find(params[:id])
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    @income = Income.find(params[:id])
    if @income.update(income_params)
      redirect_to @income, notice: '収入項目を編集しました'
    else
      redirect_to action: :new
    end
  end

  def destroy
    
  end

  private
  def income_params
    params.require(:income).permit(:name, :discription)
  end

end

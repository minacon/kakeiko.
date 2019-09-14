class IncomesController < ApplicationController
  before_action :set_income, except: [:index, :new, :create]

  def index
    @incomes = Income.order(created_at: :asc)
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income, notice: '項目を登録しました'
    else
      redirect_to action: :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @income.update(income_params)
      redirect_to @income, notice: '項目を編集しました'
    else
      redirect_to action: :new
    end
  end

  def destroy
    @income.destroy
    redirect_to @income, notice: '項目を削除しました'
  end

  private
  def income_params
    params.require(:income).permit(:name, :discription)
  end

  def set_income
    @income = Income.find(params[:id])
  end

end

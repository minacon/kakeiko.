class IncomesController < ApplicationController
  before_action :set_income, except: [:index, :new, :create]

  def index
    @incomes = Income.where(user_id:current_user.id).order(created_at: :asc)

  end

  def new
    @income = Income.new
  end

  def create
    binding.pry
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
    binding.pry
    params.require(:income).permit(:name, :discription,:amount,:year_month).merge(user_id: current_user.id)
  end

  # def year_params
  #   params.permit(:year_month)
  # end

  def set_income
    @income = Income.find(params[:id])
  end

end

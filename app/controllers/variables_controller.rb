class VariablesController < ApplicationController
  before_action :set_variable, except: [:index, :new, :create]

  def index
    @variables = Variable.order(created_at: :asc)
  end

  def new
    @variable = Variable.new
  end

  def create
    @variable = Variable.new(variable_params)
    if @variable.save
      redirect_to @variable, notice: '項目を登録しました'
    else
      redirect_to action: :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @variable.update(variable_params)
      redirect_to @variable, notice: '項目を編集しました'
    else
      redirect_to action: :new
    end
  end

  def destroy
    @variable.destroy
    redirect_to @variable, notice: '項目を削除しました'
  end

  private

  def variable_params
    params.require(:variable).permit(:name, :discription)
  end

  def set_variable
    @variable = Variable.find(params[:id])
  end
end

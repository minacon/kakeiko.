class FixedcostsController < ApplicationController
  before_action :set_fixedcost, except: [:index, :new, :create]

  def index
    @fixeds = Fixedcost.order(created_at: :asc)
  end

  def new
    @fixed = Fixedcost.new
  end

  def create
    @fixed = Fixedcost.new(fixedcost_params)
    if @fixed.save
      redirect_to @fixed, notice: '項目を登録しました'
    else
      redirect_to action: :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @fixed.update(fixedcost_params)
      redirect_to @fixed, notice: '項目を編集しました'
    else
      redirect_to action: :new
    end
  end

  def destroy
    @fixed.destroy
    redirect_to @fixed, notice: '項目を削除しました'
  end

  private

  def fixedcost_params
    params.require(:fixedcost).permit(:name, :discription)
  end

  def set_fixedcost
    @fixed = Fixedcost.find(params[:id])
  end
end

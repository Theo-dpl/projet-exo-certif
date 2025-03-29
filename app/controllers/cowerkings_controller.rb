class CowerkingsController < ApplicationController
  def index
    @cowerkings = Cowerking.all
  end

  def show
    @cowerking = Cowerking.find(params[:id])
  end

  def new
    @cowerking = Cowerking.new
  end

  def create
    @cowerking = Cowerking.new(cowerking_params)
    @cowerking.user = current_user
    if @cowerking.save
      redirect_to cowerking_path(@cowerking), notice: "Cowerking créer"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cowerking = Cowerking.find(params[:id])
  end

  def update
    @cowerking = Cowerking.find(params[:id])
    if @cowerking.update(cowerking_params)
      redirect_to cowerking_path(@cowerking), notice: "Cowerking mis à jour"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cowerking = Cowerking.find(params[:id])
    @cowerking.destroy

    redirect_to dashboard_path, status: :see_other
  end

  private

  def cowerking_params
    params.require(:cowerking).permit(:name, :description, :address, :price_per_day, :photo)
  end
end

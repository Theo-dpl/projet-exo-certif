class CowerkingsController < ApplicationController
  def index
    @cowerkings = Cowerking.all
  end

  def show
    @cowerking = Cowerking.find(params[:id])
  end
end

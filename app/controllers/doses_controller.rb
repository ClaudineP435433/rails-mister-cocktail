class DosesController < ApplicationController
  def index
    @doses = Dose.All
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to @cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end

class PlanetsController < ApplicationController

  def new
    @planet = Planet.new
    @colony = @planet.colonies.build #this is because planets have many colonies
    @colony.build_alien #because a colony belongs to a planet
    @aliens = Alien.all
    render :new
  end

  def create
    @planet = Planet.create(planet_params)
    byebug
    redirect_to @planet
  end

  def show
    @planet = Planet.find_by(id: params[:id])
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :gas, colonies_attributes: [:alien_id, :notes, alien_attributes: [:name, :population]])
  end

end

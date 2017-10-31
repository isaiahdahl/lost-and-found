class PetsController < ApplicationController
  before_action :pet, only: [:edit, :show, :update, :destroy]
  def index
    @pets = Pet.where(found_on: nil)
  end

  def found
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new(name: params[:name], category: params[:category], address: params[:address], found_on: params[:found_on] )
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pets_path
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :category, :address, :found_on)
  end

  def pet
    @pet = Pet.find(params[:id])
  end
end

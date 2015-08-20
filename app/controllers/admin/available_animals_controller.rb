class Admin::AvailableAnimalsController < ApplicationController

  before_action :check_admin

  def new
  	@available_animal = AvailableAnimal.new
  end
  def create
    @available_animals = AvailableAnimal.new
    @available_animals.price = params[:available_animal][:price]
    @available_animals.description = params[:available_animal][:description]
    @available_animals.note = params[:available_animal][:note]
    @available_animals.animal_picture = params[:available_animal][:animal_picture]
    @available_animals.save
    redirect_to admin_available_animals_path  
  end

  def index
    @available_animals_count = AvailableAnimal.count
    @available_animals = AvailableAnimal.all
  end
  def show
  	@available_animal = AvailableAnimal.find(params[:id])
  end

  def edit
  	@available_animal = AvailableAnimal.find(params[:id])
  end
  def update
    @available_animal = AvailableAnimal.find(params[:id])
    @available_animal.price = params[:available_animal][:price]
    @available_animal.description = params[:available_animal][:description]
    @available_animal.note = params[:available_animal][:note]
    @available_animal.animal_picture = params[:available_animal][:animal_picture]
    @available_animal.save
    redirect_to admin_available_animals_path 
  end

  def destroy
  	AvailableAnimal.find(params[:id]).destroy
    redirect_to admin_available_animals_path
  end

  def check_admin
    redirect_to root_path unless can? :mamge, Animal
  end


end

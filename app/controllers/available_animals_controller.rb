class AvailableAnimalsController < ApplicationController
  def new
  	@available_animal = AvailableAnimal.new
  end

  def create
    authenticate_user!
  	@available_animal = AvailableAnimal.new
  	@available_animal.user_id = current_user.id
  	@available_animal.description = params[:available_animal][:description]
  	@available_animal.note = params[:available_animal][:note]
  	@available_animal.price = params[:available_animal][:price]
  	@available_animal.quantity = params[:available_animal][:quantity]
  	@available_animal.age = params[:available_animal][:age]
  	@available_animal.weight = params[:available_animal][:weight]
  	@available_animal.height = params[:available_animal][:height]
  	@available_animal.save
  	redirect_to available_animals_path
  	
  end

  def index
  	@available_animals = AvailableAnimal.all
  	@available_animals_count = AvailableAnimal.count
  end

  def show
  	@available_animal = AvailableAnimal.find(params[:id])
  end

  def edit
  	@available_animal = AvailableAnimal.find(params[:id])
  end

  def update
  	@available_animal = AvailableAnimal.find(params[:id])
  	@available_animal.description = params[:available_animal][:description]
  	@available_animal.note = params[:available_animal][:note]
  	@available_animal.price = params[:available_animal][:price]
  	@available_animal.quantity = params[:available_animal][:quantity]
  	@available_animal.age = params[:available_animal][:age]
  	@available_animal.weight = params[:available_animal][:weight]
  	@available_animal.height = params[:available_animal][:height]
  	@available_animal.save
    redirect_to available_animals_path
  end

  def destroy
  	@available_animal = AvailableAnimal.find(params[:id]).destroy
  end

end



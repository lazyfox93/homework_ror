class Admin::AvailableAnimalsController < ApplicationController
  def new
  	@available_animal = AvailableAnimal.new
  end
  def create
  	
  end

  def index
    @available_animals_count = AvailableAnimal.count
    @available_animals = AvailableAnimal.all
  end
  def show
  	
  end

  def edit
  	
  end
  def update

  end

  def destroy
  	
  end

end

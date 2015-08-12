class AnimalsController < ApplicationController
def index
	@animals_count = Animal.count
	@animals = Animal.all
end
def new
	@animal = Animal.new
end
def show
	@animal = Animal.find(params[:id])
end
def edit
	@animal = Animal.find(params[:id])
end
def create
	@animal = Animal.new
	@animal.id = params[:animal][:id]
	@animal.animals_type = params[:animal][:animals_type]
	@animal.breed = params[:animal][:breed]
	@animal.save
	redirect_to animals_path	
end
def destroy
	 Animal.find(params[:id]).destroy
	 redirect_to animals_path
end
def update
	@animal = Animal.find(params[:id])
	@animal.id = params[:animal][:id]
	@animal.animals_type = params[:animal][:animals_type]
	@animal.breed = params[:animal][:breed]
	@animal.save
	redirect_to animals_path	
end
end

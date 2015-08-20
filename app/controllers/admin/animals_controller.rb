class Admin::AnimalsController < ApplicationController

def new
	@animal = Animal.new
end
def create
	@animal = Animal.new
	@animal.animals_type = params[:animal][:animals_type]
	@animal.breed = params[:animal][:breed]
	@animal.save
	redirect_to admin_animals_path	
end

def index
	@animals_count = Animal.count
	@animals = Animal.all
	@animals = Animal.order(:id).page(params[:page]).per(5)
end
def show
	@animal = Animal.find(params[:id])
end

def edit
	@animal = Animal.find(params[:id])
end
def update
	@animal = Animal.find(params[:id])
	@animal.animals_type = params[:animal][:animals_type]
	@animal.breed = params[:animal][:breed]
	@animal.save
	redirect_to admin_animals_path	
end

def destroy
	 Animal.find(params[:id]).destroy
	 redirect_to admin_animals_path
end
end

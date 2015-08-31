class AnimalsController < ApplicationController


def new
  
  @animal = Animal.new
end
def create
  @animal = Animal.new
  @animal.users_id = current_user.id
  @animal.animals_type = params[:animal][:animals_type]
  @animal.breed = params[:animal][:breed]
  #@animal.price = params[:animal][:price]
  @animal.note = params[:animal][:note]
  #@animal.age = params [:animal][:age]
  #@animal.weight = params [:animal][:weight]
  #@animal.height = params [:animal][:height]
  @animal.animal_picture = params[:animal][:animal_picture]
  @animal.save 
  redirect_to animals_path  
end

def index
  @animals_count = Animal.count
  @animals = Animal.all
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
  #@animal.price = params[:animal][:price]
  @animal.note = params[:animal][:note]
  #@animal.age = params [:animal][:age]
  #@animal.weight = params [:animal][:weight]
  #@animal.height = params [:animal][:height]
  @animal.animal_picture = params[:animal][:animal_picture]
  @animal.save
  redirect_to animals_path  
end



end
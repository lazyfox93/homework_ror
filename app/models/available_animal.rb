class AvailableAnimal < ActiveRecord::Base
  belongs_to :animal
  belongs_to :seller
end

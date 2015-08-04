class AvailableAnimal < ActiveRecord::Base
  belongs_to :animal
  belongs_to :seller
  has_one :payments_log
end

class AvailableAnimal < ActiveRecord::Base
  belongs_to :animal
  belongs_to :user
  has_one :payments_log
end

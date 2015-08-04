class Seller < ActiveRecord::Base
  belongs_to :user
  has_many :available_animals
end

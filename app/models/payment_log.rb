class PaymentLog < ActiveRecord::Base
  belongs_to :user
  belongs_to :available_animal
end

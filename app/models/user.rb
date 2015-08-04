class User < ActiveRecord::Base
	has_one :seller
	has_many :payments_logs
end

class User < ActiveRecord::Base
  #include ActiveModel::Dirty


  #after_update :send_welcome_letter 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
    
	has_many :animals
	has_one :user_info



	#def confirmed?
	  #confirmed_at&&confirmed_at_changed?
	#end

	#def send_welcome_letter
      #UserMailer.welcome_letter(email).deliver_now if self.confirmed?
	#end


end

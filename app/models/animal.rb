class Animal < ActiveRecord::Base
	belongs_to :user

	mount_uploader :animal_picture, AvatarUploader

	before_create :check_user

	before_update :check_owner

	def check_owner
      redirect_to root_path unless can? :manage, Animal 
    end 

    def check_user
      redirect_to root_path unless can? :create, Animal 
    end
end

class UserMailer < ApplicationMailer

	def welcome_letter(user_email)
		mail to: user_email, subject: 'Welcome to animalstrade'
	end
	
end

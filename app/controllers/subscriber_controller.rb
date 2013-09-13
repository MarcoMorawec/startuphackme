class SubscriberController < ApplicationController

	def index
	end

	def show
	end

	def new
		@subscriber = Subscriber.new(params[:subscriber])
	end

	def create
		@subscriber = Subscriber.create(params[:subscriber])
		if @subscriber.save
			flash[:notice] = "You're subscribed - start learning now!"

			 # Tell the SubscriberMailer to send a welcome Email after save
			 SubscriberMailer.welcome_email(@subscriber).deliver

			redirect_to new_user_registration_path( :email => params[:subscriber][:email])
		else
			render root_path
		end
	end


end

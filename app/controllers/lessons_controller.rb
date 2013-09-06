class LessonsController < ApplicationController

before_filter :authenticate_user!, :except => [:index]

	def index
		@admin = if user_signed_in? then current_user.admin else nil end
		
		#sort descending by month and then by week number
		@lesson = Lesson.order("month ASC, week ASC")
		@month = @lesson

		@week = @lesson.last

		#creating the weeks_since_signup variable
		if user_signed_in? 
			then @sign_up = current_user.created_at - 7.days ## so the first lesson link is activeon sign-up
		else 
			@sign_up = (Time.now - 7.days) ## so the first lesson link is always clickable 
		end
		@full_weeks_since_signup = ((Time.now - @sign_up) / 60 / 60 / 24 / 7)

		#creating the loop counter inside the each_slice loop
		@loop_counter = 0

	end

	def show
		@lesson = Lesson.find(params[:id])
		@admin = if user_signed_in? then current_user.admin else nil end
	end

	def new
		@lesson = Lesson.new(params[:lesson])
	end

	def create
		@lesson = Lesson.create(params[:lesson])
		if @lesson.save
			flash[:notice] = 'It\'s all good buddy. We saved your lesson!'
			redirect_to @lesson
		else
			render 'new'
		end
	end

	def edit
		@lesson = Lesson.find(params[:id])
	end

	def update
		@lesson = Lesson.find(params[:id])
		if @lesson.update_attributes(params[:lesson])
			flash[:notice] = "Alright buddy, your Lesson is updated!"
			redirect_to(:action => 'show')
		else
			render 'edit'
		end
	end

	def destroy
		@lesson = Lesson.find(params[:id]).destroy
		flash[:notice] = "That's it - this lesson is completely gone!"
		redirect_to lessons_path
	end

end

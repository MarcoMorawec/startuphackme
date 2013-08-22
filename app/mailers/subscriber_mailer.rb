class SubscriberMailer < ActionMailer::Base
  default from: "Startuphack@gmail.com"


   def welcome_email(subscriber)
	    @subscriber = subscriber
	    @url  = 'http://www.startuphack.it/lessons'
	    mail(to: @subscriber.email, subject: 'Welcome to Your StartupHack Lessons')
   end
end

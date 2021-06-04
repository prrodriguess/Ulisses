class RestaurantMailer < ApplicationMailer
    def create_confirmation
      @goal = params[:goal]
  
      mail(
        to:       @goal.user.email,
        subject:  "Olá #{@user.name}, você foi convidado a ser árbitro."
      )
    end
  end

class GoalMailer < ApplicationMailer
    def new_order_email
        @goal = params[:goal]
    
        mail(to: 'ulissesdemo21@gmail.com', subject: "You got a new goal!")
      end
end

# Preview all emails at http://localhost:3000/rails/mailers/goal_mailer
class GoalMailerPreview < ActionMailer::Preview
    def new_goal_email
        # Set up a temporary goal for the preview
        goal = Goal.new(title: "Joe Smith")
    
        GoalMailer.with(goal: goal).new_goal_email
      end
end

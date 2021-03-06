class UserChallengesController < ApplicationController
  def create
    # Find the challenge that has been randomly picked in my_challenge#show
    @challenge = Challenge.find(params[:challenge_id])
    # Create a User_challenge with the picked challenge and the current user
    @user_challenge = UserChallenge.new(challenge: @challenge, user: current_user)
    authorize @user_challenge
    @tip = Tip.new

    if @user_challenge.save
      respond_to do |format|
        format.js
        format.html {redirect_to my_challenge_path}
      end
    end
  end

  def completed
    @user = current_user
    @user_challenge = UserChallenge.find(params[:id])
    @user_challenge.completed = true
    authorize @user_challenge
    if @user_challenge.save
      begin
        if @user.transportations.last.created_at.in_time_zone(@user.time_zone).to_date ==
          Time.current.in_time_zone(@user.time_zone).to_date
          redirect_to dashboard_path
        else
          redirect_to new_transportation_path
        end
      rescue
        redirect_to new_transportation_path
      end
    end
  end
end

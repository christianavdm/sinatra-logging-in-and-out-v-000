require 'pry'
class Helpers
  def self.current_user
    @user = User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(params)
    !!params[:user_id]
  end

end

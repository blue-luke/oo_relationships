class Authenticate
  def initialize(user_password)
    @user_password = user_password
  end
  def check
    @user_password == entered_password
  end
end
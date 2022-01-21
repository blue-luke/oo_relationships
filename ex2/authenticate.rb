class Authenticate
  def initialize(user_password)
    @user_password = user_password
  end
  def check(suggested_password)
    @user_password == suggested_password
  end
end
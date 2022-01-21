class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @authenticator = Authenticate.new(@user_password)
  end

  def authenticate(suggested_password)
    @authenticator.check(suggested_password)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end
require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should authenticate from email and password" do
    assert_nil User.authenticate(nil, nil)
    assert_nil User.authenticate("","")
    assert_nil User.authenticate("invalid","password")
    assert_nil User.authenticate("max@guzenski.com.br","password")
    assert_nil User.authenticate("max@guzenski.com","123456")
    assert_not_nil User.authenticate("max@guzenski.com.br","123456")
  end

  test "should authenticate from token" do
    assert_nil User.authenticate_from_token("")
    assert_nil User.authenticate_from_token(nil)
    assert_nil User.authenticate_from_token("12345qwert")
    assert_not_nil User.authenticate_from_token("q1w2e3r4")
  end
  
  test "should validate presence of" do 
    user = User.new :email => "max@guzenski.com.br", :password => "121212"
    assert !user.valid?
    assert user.errors.invalid?(:email)
    assert_equal 1, user.errors.size
  end
  
  test "email should be unique" do 
    user = User.new
    assert !user.valid?
    assert user.errors.invalid?(:email)
    assert user.errors.invalid?(:password)
  end
  
  test "email should be email" do
    user = User.new :email => "meuemailsinvalido"
    assert !user.valid?
    assert user.errors.invalid?(:email)
    
    user.email = "email@valido.com.br"
    user.valid?
    assert !user.errors.invalid?(:email)
  end
  
  test "should confirm password" do
    user = User.new :email => "meu@email.com.br", :password => "123456", :password_confirmation => ""
    assert !user.valid?
    assert user.errors.invalid?(:password)
    
    user.password_confirmation = "12345"
    assert !user.valid?
    assert user.errors.invalid?(:password)
    
    user.password_confirmation = "123456"
    user.valid?
    assert !user.errors.invalid?(:password)
  end
  
  test "token should be created" do
    user = User.new :email => "meu@email.com.br", :password => "123456"
    assert_nil user.token
    assert user.save
    assert_not_nil user.token
  end
end

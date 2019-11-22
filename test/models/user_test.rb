require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not create user without email' do
    user = User.new(password: "123456")
    assert_not user.save
  end

  test 'should create user with email and password' do
    user = User.new(email: "jjj@kkk.com", password: "123456")
    assert user.save
  end

  test 'should not create user with password violating minimum length' do
    u = User.new(email: "jjj@kkk.com", password: "1234")
    assert_not u.save
  end
end

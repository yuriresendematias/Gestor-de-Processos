require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not create user without email' do
    user = User.new
    assert_not user.save
  end

  #test 'should create user with email and password' do
  #  user = User.new email: 'emaildetest00123@email.com', encrypted_password: '123456'
  #  assert user.save
  #end

  test 'should not create user with password violating minimum length' do
    user = User.new email: 'jjj@kkk.com', encrypted_password: '12345'
    assert_not user.save
  end
end

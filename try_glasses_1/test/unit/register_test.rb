require 'test_helper'

class RegisterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "register attributes must not be empty" do
    register = Register.new
    assert register.invalid?
    assert register.errors[:name].any?
    assert register.errors[:address].any?
    assert register.errors[:email].any?
  end
end

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "client attributes must not be empty" do
    client = Client.new
    assert client.invalid?
    assert client.errors[:user_name].any?
    assert client.errors[:gender].any?
    #assert client.errors[:image_url].any?
    #assert client.errors[:frame_url].any?
  end
end

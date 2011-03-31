require 'test_helper'

class ModelImageTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "model_image attributes must not be empty" do
    modelImg = ModelImage.new
    assert modelImg.invalid?
    assert modelImg.errors[:image_url].any?
    assert modelImg.errors[:gender].any?
  end
end

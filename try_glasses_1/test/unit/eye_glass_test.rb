require 'test_helper'

class EyeGlassTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "eye_glass attributes must not be empty" do
    eyeGLS = EyeGlass.new
    assert eyeGLS.invalid?
    assert eyeGLS.errors[:name].any?
    assert eyeGLS.errors[:material].any?
    assert eyeGLS.errors[:color].any?
    assert eyeGLS.errors[:shape].any?
    assert eyeGLS.errors[:price].any?
    assert eyeGLS.errors[:who_can_wear].any?
    assert eyeGLS.errors[:image_url].any?
    assert eyeGLS.errors[:frame_url].any?
  end

  test "eye_glass price must be positive" do
    eyeG = EyeGlass.new(:name => "Giavanni",
                        :material => "coral",
                        :color => "Aqua-Verde",
                        :shape => "Sqircle",
                        :who_can_wear => "Fabulous",
                        :image_url => "image/frame_020.png",
                        :frame_url => "image/frame_020_model.png")
    eyeG.price = -1
    assert eyeG.invalid?
    assert_equal "must be greater than or equal to 0.01",
      eyeG.errors[:price].join('; ')

    eyeG.price = 0
    assert eyeG.invalid?
    assert_equal "must be greater than or equal to 0.01",
      eyeG.errors[:price].join('; ')

    eyeG.price = 1
    assert eyeG.valid?
  end
end

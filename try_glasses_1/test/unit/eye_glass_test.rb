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
    #assert eyeGLS.errors[:frame_url].any?
  end
end

class EyeGlass < ActiveRecord::Base
  ActiveRecord::Base.include_root_in_json = false
	 validates_presence_of :name
    validates_presence_of :material
    validates_presence_of :color 
    validates_presence_of :shape
    validates_presence_of :price
    validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
    validates_presence_of :who_can_wear
    validates_presence_of :image_url
    validates_presence_of :frame_url
    validates_uniqueness_of :image_url
end

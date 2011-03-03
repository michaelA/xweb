class EyeGlass < ActiveRecord::Base
  
	 validates_presence_of :name
    validates_presence_of :material
    validates_presence_of :color 
    validates_presence_of :shape
    validates_presence_of :price 
    validates_presence_of :who_can_wear
    validates_presence_of :image_url
    
    validates_uniqueness_of :image_url
end

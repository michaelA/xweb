class ModelImage < ActiveRecord::Base
  
    validates_presence_of :image_url
    validates_presence_of :gender
    
    validates_uniqueness_of :image_url
    
    has_many :eye_glasses
  
end

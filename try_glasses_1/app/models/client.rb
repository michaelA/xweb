class Client < ActiveRecord::Base
  validates_presence_of :user_name
  validates_presence_of :gender
  
   validates_uniqueness_of :user_name
  
  has_many :clients 
  has_many :eye_glasses 
end

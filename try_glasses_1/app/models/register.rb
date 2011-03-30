class Register < ActiveRecord::Base
validates :name, :address, :email, :presence => true
end

class Register < ActiveRecord::Base
validates :name,
          :address,
          :presence => true
validates :email,
          :presence => true,
          :uniqueness => true #added so that no register item is the same

end

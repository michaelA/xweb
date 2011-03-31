class Register < ActiveRecord::Base
validates :name,
          :address,
          :email,
          :presence => true,
          :uniqueness => true #added so that no register item is the same

end

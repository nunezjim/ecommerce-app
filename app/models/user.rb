class User < ActiveRecord::Base
#remember to add it in the Gemfile 
 has_secure_password

 has_many :orders
end

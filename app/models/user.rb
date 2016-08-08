class User < ActiveRecord::Base
#remember to add it in the Gemfile
 has_secure_password
 has_many :orders
 has_many :carted_products

def orders
  Order.where(user_id: self.id)
end
end

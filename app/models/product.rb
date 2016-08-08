class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :oders, through: :carted_products
end

  def sales_messsage
    if price.to_i < 2
      "Discount Item!"
    elsif
      "Not on Sale"
    end
  end

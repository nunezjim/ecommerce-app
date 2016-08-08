class UpdateStatusAttributeToCartedProducts < ActiveRecord::Migration
  def change
    rename_column :carted_products, :quanity, :quantity 
  end
end

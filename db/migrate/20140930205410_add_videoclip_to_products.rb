class AddVideoclipToProducts < ActiveRecord::Migration
  def change
    add_column :products, :videoclip, :text
  end
end

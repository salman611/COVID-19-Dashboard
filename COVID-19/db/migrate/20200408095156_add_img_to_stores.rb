class AddImgToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :img, :string
  end
end

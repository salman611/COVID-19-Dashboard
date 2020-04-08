class AddImgToHospitals < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :img, :string
  end
end

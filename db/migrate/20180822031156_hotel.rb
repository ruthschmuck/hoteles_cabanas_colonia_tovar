class Hotel < ActiveRecord::Migration[5.2]
  def change
    change_column(:hotels, :nombre, :string, null: false)
    add_index :hotels, :nombre, unique: true
    change_column(:hotels, :descripcion, :text, null: false)
    change_column(:hotels, :direccion, :text, null: false)
    change_column(:hotels, :telefono, :string, null: false)
  end
end

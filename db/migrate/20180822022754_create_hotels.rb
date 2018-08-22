class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :nombre
      t.text :descripcion
      t.text :direccion
      t.string :telefono
      t.string :email
      t.json :fotos

      t.timestamps
    end
  end
end

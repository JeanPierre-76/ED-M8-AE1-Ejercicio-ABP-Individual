class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.text :nombre
      t.text :correo
      t.text :comentarios

      t.timestamps
    end
  end
end

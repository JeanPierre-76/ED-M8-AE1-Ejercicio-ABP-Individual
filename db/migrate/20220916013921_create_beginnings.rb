class CreateBeginnings < ActiveRecord::Migration[7.0]
  def change
    create_table :beginnings do |t|
      t.text :name
      t.text :correo
      t.text :descripcion_de_tu_perfil_hobbies_y_pasiones
      t.text :ultimos_dos_trabajos_o_estudios

      t.timestamps
    end
  end
end

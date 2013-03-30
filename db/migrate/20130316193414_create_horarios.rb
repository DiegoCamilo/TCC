class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.references :professor
      t.string :dia_semana
      t.boolean :horario1
      t.boolean :horario2
      t.boolean :horario3
      t.boolean :horario4
      t.boolean :horario5
      t.boolean :horario6

      t.timestamps
    end
    add_index :horarios, :professor_id
  end
end

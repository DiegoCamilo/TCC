class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.references :pessoa

      t.timestamps
    end
    add_index :professors, :pessoa_id
  end
end

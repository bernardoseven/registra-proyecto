class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :proyect, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

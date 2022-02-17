class CreateMovePools < ActiveRecord::Migration[6.1]
  def change
    create_table :move_pools do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :move, null: false, foreign_key: true

      t.timestamps
    end
  end
end

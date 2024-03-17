class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :place_name,                  null: false
      t.integer :prefecture_id,              null: false
      t.references :user,                    null: false, foreign_key: true
      t.timestamps
    end
  end
end

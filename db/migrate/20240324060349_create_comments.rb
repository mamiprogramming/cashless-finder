class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text,                             null: false
      t.integer :cashless_id,                   null: false
      t.references :user,    null: false, foreign_key: true
      t.references :venue,   null: false, foreign_key: true
      t.timestamps
    end
  end
end

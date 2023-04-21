class CreateSubs < ActiveRecord::Migration[7.0]
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description
      t.bigint :moderator_id, null: false
      t.timestamps
    end
    add_index :subs, :title
    
    add_foreign_key :subs, :users, column: :moderator_id
  end
end

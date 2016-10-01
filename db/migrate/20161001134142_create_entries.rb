class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :value
      t.references :user, index: true
      t.string :comment

      t.timestamps null: false
    end
    add_foreign_key :entries, :users
  end
end

class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :unit
      t.string :agent
      t.string :description

      t.timestamps null: false
    end
  end
end

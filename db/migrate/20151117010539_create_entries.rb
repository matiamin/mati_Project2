class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :title
      t.date :deadline
      t.text :institute
      t.string :website
      t.text :description
      t.string :country

      t.timestamps null: false
    end
  end
end

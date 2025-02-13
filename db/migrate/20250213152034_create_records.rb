class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.text :description

      t.timestamps
    end
  end
end

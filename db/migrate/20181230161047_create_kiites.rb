class CreateKiites < ActiveRecord::Migration[5.2]
  def change
    create_table :kiites do |t|
      t.text :text
      t.integer :sokka

      t.timestamps
    end
  end
end

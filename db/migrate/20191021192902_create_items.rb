class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :date
      t.string :company
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end

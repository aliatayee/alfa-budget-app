class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.references :user, null: true, foreign_key: true, index: true

      t.timestamps
    end
  end
end

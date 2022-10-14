class CreateJoinTableActivitiesCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :activities do |t|
      t.index %i[category_id activity_id]
      t.index %i[activity_id category_id]
    end
  end
end

class CreateJoinTableBlogCategoriesPosts < ActiveRecord::Migration
  def change
    create_join_table :categories, :posts do |t|
      t.index [:category_id, :post_id]
      t.index [:post_id, :category_id]
    end
  end
end

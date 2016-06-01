class CreateBlogCategories < ActiveRecord::Migration
  def change
    create_table :blog_categories do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end

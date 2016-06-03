class BlogPost < ActiveRecord::Base

	resourcify

	belongs_to :user, class_name: User

	has_and_belongs_to_many :categories, class_name: BlogCategory,
											  join_table: :categories_posts,
											  foreign_key: :post_id,
											  association_foreign_key: :category_id

	validates :title, presence: true,
	                  length: { maximum: 250 }		
	validates :description, presence: true, 
			    		length: { minimum: 10 }
end

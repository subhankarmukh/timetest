class BlogCategory < ActiveRecord::Base
	validates :title,   presence: true,
	                       		length: { maximum: 250 }
	validates :content, presence: true, length: { maximum: 500 } 	                        

	
	# Associations
	has_and_belongs_to_many :posts, class_name: BlogPost,
									join_table: :categories_posts,
									foreign_key: :category_id,
									association_foreign_key: :post_id
end

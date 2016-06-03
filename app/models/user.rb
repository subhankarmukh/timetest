class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  rolify

  has_many :blog_posts

  # Callbacks
  before_create :add_user_role

  private
      def add_user_role
        self.add_role :user
      end
  
end

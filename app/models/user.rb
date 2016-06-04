class User < ActiveRecord::Base
  
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  # Callbacks
  before_create :add_user_role

  # Associations
  has_many :blog_posts

  # Add 'user' role to user rows that do not have any role
  def self.add_user_role_to_users_without_role
  	User.all.map { |u| u.add_role(:user) if u.roles.empty? }
  end

  private
      def add_user_role
        self.add_role :user
      end
  
end

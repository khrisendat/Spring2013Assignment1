class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_and_belongs_to_many(:users,
    :join_table => "user_connections",
    :foreign_key => "followee_id",
    :association_foreign_key => "follower_id")

  validates :name, :presence => true
  validates :email, :presence => true,
  					:format => {
              		:with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              		:message => "NOT THE PROPER EMAIL FORMAT!" }
  
  has_many :statuses, :dependent => :destroy

end

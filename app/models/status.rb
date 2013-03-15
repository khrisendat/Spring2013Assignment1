class Status < ActiveRecord::Base
	
  belongs_to :user
  has_and_belongs_to_many :tags
   has_and_belongs_to_many(:statuses,
    :join_table => "status_connections",
    :foreign_key => "status_a_id",
    :association_foreign_key => "status_b_id")

  attr_accessible :geocode, :image_url, :status


  validates :status, :presence =>true
  validates :image_url, 
  					:format => {
              		:with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              		:message => "NOT THE PROPER URL FORMAT!" }


  end

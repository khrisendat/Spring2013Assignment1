class UserConnectionTable < ActiveRecord::Migration
 def change
 	create_table :user_connections, :id=>false do |t|
 		 t.integer "followee_id", :null => false
  		 t.integer "follower_id", :null => false
  	end
 end
end

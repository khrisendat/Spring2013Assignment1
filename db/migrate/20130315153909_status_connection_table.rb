class StatusConnectionTable < ActiveRecord::Migration
  def change
  	    create_table :status_connections, :id=>false do |t|
  		  t.integer "status_a_id", :null => false
  		  t.integer "status_b_id", :null => false
  		end
  end
end

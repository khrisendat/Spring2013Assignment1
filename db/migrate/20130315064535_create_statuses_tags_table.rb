class CreateStatusesTagsTable < ActiveRecord::Migration
  def change
  	create_table :statuses_tags, :id => false do |t|
  		t.references :status
  		t.references :tag
  	end
  end
end


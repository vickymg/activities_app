class AddNameToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :name, :text
  end
end

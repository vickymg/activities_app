class AddMemberRefToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :member, index: true, foreign_key: true
  end
end

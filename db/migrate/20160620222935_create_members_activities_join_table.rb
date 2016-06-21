class CreateMembersActivitiesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :activities, :members
  end
end

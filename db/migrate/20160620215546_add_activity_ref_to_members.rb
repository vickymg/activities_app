class AddActivityRefToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :activity, index: true, foreign_key: true
  end
end

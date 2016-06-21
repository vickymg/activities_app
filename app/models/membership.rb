class Membership < ActiveRecord::Base
  belongs_to :activity
  belongs_to :member
end

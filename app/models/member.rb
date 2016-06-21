class Member < ActiveRecord::Base
  has_many :memberships
  has_many :activities, through: :memberships
end

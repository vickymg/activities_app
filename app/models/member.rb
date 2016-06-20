class Member < ActiveRecord::Base
  has_many :activities, dependent: :destroy
end

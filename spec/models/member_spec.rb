require 'rails_helper'

RSpec.describe Member, type: :model do
  it { should have_many(:activities).through(:memberships) }
end

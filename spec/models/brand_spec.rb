require 'rails_helper'

RSpec.describe Brand, type: :model do
  context "#associations" do
  it {should have_many :perks}
  end
end
require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it "belongs to a user" do
    should belong_to(:user)
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a secure password" do
    should have_secure_password
  end
  it "has a unique email address" do
    should validate_uniqueness_of(:email)
  end
  it "has many tweets" do
    should have_many(:tweets)
  end
end

require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

  describe "Routing" do
    it "routes get /tweets to tweets index" do
      should route(:get, '/tweets').to(action: :index)
    end
    it "routes post /tweets to tweets create" do
      should route(:post, '/tweets').to(action: :create)
    end
    it "routes get /users/:user_id/tweets/:id tweets show" do
      should route(:get, '/users/:user_id/tweets/:id').to(action: :show, user_id: ":user_id", id: ":id")
    end
    it "routes delete /tweets to tweets destroy" do
      should route(:delete, '/tweets/:id').to(action: :destroy, id: ":id")
    end
  end

  describe "#index" do
    before do
      user = double('user')
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      get :index
    end

    it "responds successfully with HTTP 200 when user is sign in" do
      expect(response).to be_success
    end
  end

  describe "#create" do
    before do
      user = double('user')
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      get :create, {tweet: {content: Faker::Lorem.sentence}}
    end

    it "responds successfully with HTTP 200 when user is sign in" do
      expect(response).to be_success
    end
  end
end
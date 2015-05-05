require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "Routing" do
    it "get#users" do
      should route(:get, '/users').to(action: :index)
    end
  end
end

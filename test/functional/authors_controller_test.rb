require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup do
      get :index
    end

    should_assign_to :authors
    should_respond_with :success
    should_render_template :index
    should_not_set_the_flash
  end
end

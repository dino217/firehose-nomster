require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create comment" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
      post :create, :place_id => place.id, :comment => {
          :message => "Hahaha",
          :rating => "2_stars"}
    end
    assert_redirected_to place_path(place)

  end
end

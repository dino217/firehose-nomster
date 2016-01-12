require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "humanized rating" do
    FactoryGirl.create(:user)

    FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment )
    expected = 'one star'
    actual = comment.humanized_rating

    assert_equal expected, actual

  end
end

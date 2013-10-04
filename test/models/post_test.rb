require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "#displayed_title displays 'no title' when title is blank" do
    assert_equal "no title", Post.new.displayed_title
  end

  test "#displayed_title displays the tille when title is present" do
    assert_equal Post.new(title: "mi post").displayed_title, "mi post"
  end
end

require "test_helper"

class PostListTest < ActionDispatch::IntegrationTest

  test "The root page shows all the posts" do
    Post.create! title: "Primero post"
    Post.create! title: "Segundo post"

    visit "/"
    assert page.has_content?("Primero post")
    assert page.has_content?("Segundo post")
  end
end

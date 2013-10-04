require "test_helper"

class PostCreationTest < ActionDispatch::IntegrationTest

  test "I can create a new post" do
    visit "/posts/new"
    fill_in "post_title", with: "Mi primero post"
    fill_in "post_content", with: "Cualquier contenido"
    click_button "create"

    assert page.has_content?("Mi primero post")
    assert page.has_content?("Cualquier contenido")
  end
end

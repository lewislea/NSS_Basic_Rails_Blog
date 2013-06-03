require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest

  test "browse articles" do
    Post.create!(title: "First Post!!", body: "This is awkward... I have nothing to say :(")
    Post.create!(title: "Wow, it's been a while!", body: "And yet, I'm still not a writer :( :( lolol")
    # visit '/'
    # click_link "View All Posts"
    visit '/posts'
    #assume we have a page variable
    assert_equal 2, Post.count
    assert_include page.body, "First Post!!"
    #same as=> assert page.content.include?("First Post!!")
    assert_include page.body, "Wow, it's been a while!"

  end

end

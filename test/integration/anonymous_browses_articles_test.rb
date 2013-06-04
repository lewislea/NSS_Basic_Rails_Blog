require 'test_helper'

class AnonymousBrowsesArticlesTest < ActionDispatch::IntegrationTest

  test "view a list of articles" do
    Post.create!(title: "My First Post!!", body: "This is awkward...
        I have nothing to say :(")
    Post.create!(title: "Wow, it has been a while!", body: "And yet,
        I'm still not a writer :( :( lolol")
    visit '/posts'
    assert_equal 2, Post.count
    assert_include page.body, "My First Post!!"
    assert_include page.body, "Wow, it has been a while!"

  end

end

require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "creation Article" do
    article = Article.new(title: "My Test Article!!!")

    assert article.save
  end

  test "title must be present" do
    article = Article.new

    refute article.save
    assert_equal "Title can't be blank", article.errors.full_messages_for(:title).first
  end
end

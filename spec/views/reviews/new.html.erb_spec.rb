require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      coffee: nil,
      user: nil,
      comments: "MyText",
      rating: 1.5
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[coffee_id]"

      assert_select "input[name=?]", "review[user_id]"

      assert_select "textarea[name=?]", "review[comments]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end

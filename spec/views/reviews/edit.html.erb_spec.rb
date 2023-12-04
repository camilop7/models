require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  let(:review) {
    Review.create!(
      coffee: nil,
      user: nil,
      comments: "MyText",
      rating: 1.5
    )
  }

  before(:each) do
    assign(:review, review)
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(review), "post" do

      assert_select "input[name=?]", "review[coffee_id]"

      assert_select "input[name=?]", "review[user_id]"

      assert_select "textarea[name=?]", "review[comments]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end

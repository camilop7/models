require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    assign(:review, Review.create!(
      coffee: nil,
      user: nil,
      comments: "MyText",
      rating: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
  end
end

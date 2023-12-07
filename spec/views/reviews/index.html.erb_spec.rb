RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        coffee: nil,
        user: nil,
        comments: "MyText",
        rating: 2.5
      ),
      Review.create!(
        coffee: nil,
        user: nil,
        comments: "MyText",
        rating: 2.5
      )
    ])
  end

  it "renders a list of reviews" do
    render

    assert_select 'div[id^="review_"]', count: 2 do
      assert_select 'p', text: /Coffee:/, count: 2
      assert_select 'p', text: /User:/, count: 2
      assert_select 'p', text: /Comments:/, count: 2
      assert_select 'p', text: /Rating:/, count: 2
    end
  end
end

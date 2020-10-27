require 'rails_helper'

describe "Creating a review" do
  it 'creates a review' do
    review = FactoryBot.create(:review, :body=>"this is excellent", :city => "Portland", :country => "USA", :user_name => "BillyBob", :rating => 5)
    expect(review.city).to eq "Portland"
  end
end
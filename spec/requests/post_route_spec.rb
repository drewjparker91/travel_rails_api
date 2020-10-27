require 'rails_helper'

describe "post a review route", :type => :request do
  
  before do
    post '/reviews', params: { :body => 'test_body', :city => 'test_city', :country => 'test_country', :user_name => 'test_user_name', :rating => "5"}
  end

  it 'returns the body' do
    expect(JSON.parse(response.body)['body']).to eq('test_body')
  end

  it 'returns the review city' do 
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

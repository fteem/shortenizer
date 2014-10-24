require 'rails_helper'

describe Shortenizer::UrlPresenter do
  before :each do
    request = double(base_url: 'http://localhost:3000')
    obj = Shortenizer::Url.create(target: 'yahoo.com')
    @presenter = Shortenizer::UrlPresenter.new(obj, request)
  end

  it 'displays the full URL with the host of the app' do
    expect(@presenter.full_url).to eq "http://localhost:3000/whatever/#{@presenter.shortlink}"
  end
end

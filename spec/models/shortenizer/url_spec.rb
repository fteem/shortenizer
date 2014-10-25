require 'rails_helper'

describe Shortenizer::Url do
  describe '#append_https' do
    it 'appends http if link does not begin with http' do
      url = described_class.create(shortlink: '12345', target: 'yahoo.com')
      url.reload

      expect(url.target).to eq 'http://yahoo.com'
    end
  end

  describe '#create_unique_identifier' do
    it 'sets the url shortlink to a unique string' do
      expect(SecureRandom).to receive(:hex).and_return "12345"
      url = described_class.create(target: 'http://eftimov.net')
      url.reload

      expect(url.shortlink).to eq "12345"
    end
  end

end

module Shortenizer
  class Url < ActiveRecord::Base

    before_create :create_unique_identifier
    before_create :append_https

    def create_unique_identifier
      begin
        self.shortlink = SecureRandom.hex(8)
      end while self.class.exists?(:shortlink => shortlink)
    end

    def append_https
      unless self.target =~ /http/i
        self.target = "https://#{self.target}"
      end
    end
  end
end

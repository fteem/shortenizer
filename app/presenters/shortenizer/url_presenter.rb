module Shortenizer
  class UrlPresenter

    def initialize url, request = nil
      @url = url
      @request = request
    end

    def full_url
      mount_point = Shortenizer::MountPoint.new
      if mount_point.at_root?
        "#{@request.base_url}/#{@url.shortlink}"
      else
        "#{@request.base_url}#{mount_point.location}/#{@url.shortlink}"
      end
    end

    def shortlink
      @url.shortlink
    end

  end
end

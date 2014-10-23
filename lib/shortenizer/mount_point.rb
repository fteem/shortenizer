module Shortenizer
  class MountPoint
    attr_reader :location

    def initialize
      @location = Rails.application.routes.routes.select {|r| r.name == 'shortenizer' }.first.path.spec.to_s
    end

    def at_root?
      @location == '/'
    end
  end
end

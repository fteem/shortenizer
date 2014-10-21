module Shortenizer
  class UController < ApplicationController

    def index
      target = Url.find_by(shortlink: params[:shortlink]).target
      redirect_to target
    end

    def new
      @url = Shortenizer::Url.new
    end

    def create
      @url = Shortenizer::Url.new(url_params)
      if @url.save
        flash[:message] = "Your URL has been shortened to: #{build_url(@url.shortlink)}"
      else
        flash[:message] = "Error motherfucker!"
      end

      redirect_to action: :new
    end

    private
    def url_params
      params.require(:url).permit(:target, :shortlink)
    end

    def build_url shortlink
      if shortenizer_at_root?
        "#{request.base_url}/#{shortlink}"
      else
        "#{request.base_url}#{shortenizer_mount_point}/#{shortlink}"
      end
    end

    def shortenizer_mount_point
      Rails.application.routes.routes.select {|r| r.name == 'shortenizer' }.first.path.spec.inspect
    end

    def shortenizer_at_root?
      shortenizer_mount_point == '/'
    end


  end
end

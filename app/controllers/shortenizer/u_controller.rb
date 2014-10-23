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
      mount_point = Shortenizer::MountPoint.new
      if mount_point.at_root?
        "#{request.base_url}/#{shortlink}"
      else
        "#{request.base_url}#{mount_point.location}/#{shortlink}"
      end
    end

  end
end

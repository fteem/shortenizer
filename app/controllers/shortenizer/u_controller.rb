module Shortenizer
  class UController < ApplicationController

    def index
      url = Url.find params[:shortlink]
      redirect_to url
    end

    def new
      @url = Shortenizer::Url.new
    end

    def create
      @url = Shortenizer::Url.new(url_params)
      if @url.save
        flash[:message] = "Your URL has been shorten!"
      else
        flash[:message] = "Error motherfucker!"
      end

      redirect_to action: :new
    end

    private
    def url_params
      params.require(:url).permit(:target, :shortlink)
    end

  end
end

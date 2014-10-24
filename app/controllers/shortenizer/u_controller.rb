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
        flash[:message] = "Your URL has been shortened..."
      else
        flash[:message] = "Error occured, please try again!"
      end

      redirect_to action: :show, shortlink: @url.shortlink
    end

    def show
      url_obj = Url.find_by(shortlink: params[:shortlink])
      @url = Shortenizer::UrlPresenter.new(url_obj, request)
    end

    private
    def url_params
      params.require(:url).permit(:target, :shortlink)
    end

  end
end

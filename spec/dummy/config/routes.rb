Rails.application.routes.draw do

  mount Shortenizer::Engine => "/shortenizer"
end

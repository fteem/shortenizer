Rails.application.routes.draw do

  mount Shortenizer::Engine => "/whatever"
end

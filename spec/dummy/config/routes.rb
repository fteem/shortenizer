Rails.application.routes.draw do

  mount Shortenizer::Engine => "/"
end

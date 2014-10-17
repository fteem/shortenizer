Shortenizer::Engine.routes.draw do
  match '/shorten', to: 'u#new', via: :get, as: :new_short_link
  match '/create', to: 'u#create', via: :post, as: :create_short_link
  match '/:shortlink', to: 'u#index', via: :get
end

Shortenizer::Engine.routes.draw do
  root 'u#new'
  match '/shorten', to: 'u#new', via: :get, as: :new_short_link
  match '/create', to: 'u#create', via: :post, as: :create_short_link
  match '/:shortlink', to: 'u#index', via: :get
end

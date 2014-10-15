Shortenizer::Engine.routes.draw do
  match 'u/new', to: 'u#new', via: :get
  match 'u/create', to: 'u#create', via: :post
  match 'u/index', to: 'u#index', via: :get
end

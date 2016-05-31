Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get  'static_pages/test'

  get "/static_pages/page" => "static_pages#show"
  root "static_pages#show", page: "home"




end

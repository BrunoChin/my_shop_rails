Rails.application.routes.draw do

  root to: "static_pages#index"

  resource  :products, only: [:new, :create]
end

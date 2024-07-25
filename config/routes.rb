Rails.application.routes.draw do
  
  root 'homepage#index'
  resources :hotels
  resources :rooms
  resources :reservations
  resources :umrah_visas, only: [:index, :show]
  resources :riyal_rates, only: [:index, :show]
  get '/*path' => 'homepage#index'
  get "up" => "rails/health#show", as: :rails_health_check
end

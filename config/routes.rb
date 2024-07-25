Rails.application.routes.draw do
  get 'umrah_visas/index'
  get 'umrah_visas/show'
  get 'riyal_rates/index'
  get 'riyal_rates/show'
  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/new'
  post 'reservations/create'
  get 'reservations/edit'
  get 'reservations/update'
  get 'reservations/destroy'
  get 'rooms/index'
  get 'rooms/show'
  get 'rooms/new'
  post 'rooms/create'
  get 'rooms/edit'
  get 'rooms/update'
  delete 'rooms/destroy'
  get 'hotels/index'
  get 'hotels/show'
  get 'hotels/new'
  get 'hotels/create'
  get 'hotels/edit'
  get 'hotels/update'
  delete 'hotels/destroy'
  get 'homepage/index'
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

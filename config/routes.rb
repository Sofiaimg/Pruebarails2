Rails.application.routes.draw do
  get 'pendings/update'
  root to: 'todos#index'
  resources :todos, only: [:index, :show]
  resources :pendings, only: :update
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

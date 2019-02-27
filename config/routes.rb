Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :amusementparks, only: [:index, :show] do
    resources :memberships, only: [:index, :show]
    resources :rollercoasters, only: [:index, :show]
  end

  get 'user_everything/:id', action: :show, controller: :users
end

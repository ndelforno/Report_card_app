Rails.application.routes.draw do
  root 'students#index'
  get 'students/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students do
    collection { post :import }
  end
end

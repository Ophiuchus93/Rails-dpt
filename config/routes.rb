Rails.application.routes.draw do
  root "departs#index"

  resources :departs do
    resources :items
  end
end

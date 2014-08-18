Rails.application.routes.draw do
    resources :locations, only: %i(index create)
    root 'locations#index'
end

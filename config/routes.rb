Rails.application.routes.draw do
    resources :locations, only: %i(index create destroy)
    root 'locations#index'
end

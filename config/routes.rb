Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :customers, only: [] do
        get '/subscriptions', to: 'customers/subscriptions#index'
      end
    end
  end
end

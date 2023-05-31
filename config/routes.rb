Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :customers, only: [] do
        get '/subscriptions', to: 'customers/subscriptions#index', as: 'customer_subscriptions'
        post '/subscriptions', to: 'customers/subscriptions#create' 
				delete '/subscriptions/:id', to: 'customers/subscriptions#destroy'
      end
    end
  end
end

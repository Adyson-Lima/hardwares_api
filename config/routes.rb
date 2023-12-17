Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :hardwares
    end
  end
  
end

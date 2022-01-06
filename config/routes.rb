Rails.application.routes.draw do
  root "tops#index"
  resources :blogs do
    collection do
      post :confirm
    end
  end
end

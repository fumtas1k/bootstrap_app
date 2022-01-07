Rails.application.routes.draw do
  root "tops#index"
  get "/tops/top", to: "tops#top"
  resources :blogs do
    collection do
      post :confirm
    end
  end
end

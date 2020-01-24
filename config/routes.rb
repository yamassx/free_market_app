Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :signup, only: [:index,:create] do
    collection do
      get 'user_top'
      get 'session1'
      get 'session2'
      get 'session3'
      get 'session4' 
      get 'session5' 
    end
  end
  resources :products do
    collection do
      get 'search'
    end
  end
  #マイページ
  resources :users, only: [:index] do
    member do
      resources :mypage, only: [:index] do
        collection do
          get 'profile'
          post 'profile'
          patch 'profile_edit'
          get 'payment'
          get 'logout'
        end
      end
    end
  end
end

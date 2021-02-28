Rails.application.routes.draw do
  
  devise_for :authors
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrailso.rg/routing.html
  root 'home#index'
  scope module: 'authors' do 
    resources :posts
  end
end

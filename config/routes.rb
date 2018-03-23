Rails.application.routes.draw do
  get 'site/about'

  get 'site/contact'

  get '/about' => 'site#about'
  
  get '/contact' => 'site#contact'

  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'items#index'
  
end

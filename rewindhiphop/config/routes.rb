Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  	
  get 'home', to: 'static_pages#home', as: 'home'

  get 'tapes', to: 'static_pages#tapes', as: 'tapes'

  get 'user', to: 'static_pages#user', as: 'user'
  
  devise_for :users do 
  
	  get 'users/sign_in', to: 'devise/sessions#new'

	  get 'users/sign_in', to: 'devise/sessions#create'

	  get 'users/sign_out' => 'devise/sessions#destroy'

	  get 'users/password/new', to: 'devise/passwords#new'

	  get 'users/password/edit', to: 'devise/passwords#edit'

	  get 'users/cancel', to: 'devise/registrations#cancel'

	  get 'users/sign_up', to: 'devise/registrations#new'

	  get 'users/edit', to: 'devise/registrations#edit'

	end

  root to: 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

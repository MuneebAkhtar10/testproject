Rails.application.routes.draw do
 
  get 'dashboard/index'
  devise_for :users
  root 'dashboard#index'

  shallow do
  	resources :projects do
			member do
				get 'bugs'
			end	
			resources :bugs
		end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

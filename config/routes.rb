Rails.application.routes.draw do
  root 'contacts#index'
  resources :contacts

  get 'biz_contacts/index'
  # root to: '/'
  # get 'contacts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

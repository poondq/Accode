Rails.application.routes.draw do

  get 'requests/index'

	resources :dashboard, :profile, :setting, :transaction, :travellers, :cashbalance, :merchants, :requests

  devise_for :users, :travellers


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"

#   scope :path => '/api/v1/', :module => "api_v1", :as
# => 'v1', :defaults => { :format => :json } do
#  resources :dashboard, :profile, :settings, :transaction, :cashbalance, :traveller
# 	end

end

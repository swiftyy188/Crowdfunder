Rails.application.routes.draw do

resources :projects do
	resources :comments, only: [:create, :destroy]
	resources :pledges, only: [:create, :show, :new]
end

resources :users, only: [:new, :create, :show]
resources :sessions, only: [:new, :create, :destroy]

end

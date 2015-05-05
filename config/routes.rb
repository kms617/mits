Rails.application.routes.draw do
 resources :tasks, only: [:create, :new]
end

Rails.application.routes.draw do
  get '/', to: 'resumes#index'  
  get '/skills', to: 'skills#index'
  get '/capstones', to: 'capstones#index'
end

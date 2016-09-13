Rails.application.routes.draw do
  get '/', to: 'resumes#index'
  get '/resumes', to: 'resumes#index'
  get '/resumes/:id', to: 'resumes#show', as: 'resume'
  post '/resumes', to: 'resumes#create'
  patch '/resumes/:id', to: 'resumes#update'
  delete '/resumes/:id', to: 'resumes#destroy'
end

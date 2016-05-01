Rails.application.routes.draw do
   
  resources :articles

  root 'pages#welcome'

  get '/portfolio', to: 'pages#portfolio'

  get '/blog', to: 'articles#blog'

  get '/blognew', to: 'articles#new'

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

  get '*path' => redirect('/')
end

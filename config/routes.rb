Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/top' => "stamps#top"
  post '/login' => "stamps#login"
  post '/logout' => "stamps#logout"
  get '/index' => "stamps#index"
  get '/stamp/:id/start' => "stamps#start"
  get '/stamp/:id/am_finish' => "stamps#am_finish"
  get '/stamp/:id/pm_start' => "stamps#pm_start"
  get '/stamp/:id/finish' => "stamps#finish"
  get '/stamp/edit' => "stamps#edit"
  get  '/stamp/aggregate' => "stamps#aggregate"
  get  '/stamp/day_search' => "stamps#day_search"
  get  '/stamp/name_search' => "stamps#name_search"
  get  '/stamp/my_search' => "stamps#my_search"
  get  '/stamp/csv_export' => "stamps#csv_export"

  post '/stamp/create_start' => "stamps#create_start"
  post '/stamp/create_am_finish' => "stamps#create_am_finish"
  post '/stamp/create_pm_start' => "stamps#create_pm_start"
  post '/stamp/create_finish' => "stamps#create_finish"
  post '/stamp/create_memo' => "stamps#create_memo"
  post '/stamp/:id/destroy' => "stamps#destroy"

  post '/stamp/:id/update_start' => "stamps#update_start"
  post '/stamp/:id/update_am_finish' => "stamps#update_am_finish"
  post '/stamp/:id/update_pm_start' => "stamps#update_pm_start"
  post '/stamp/:id/update_finish' => "stamps#update_finish"

  get '/user/index' => "users#index"
  get '/user/:id/show' => "users#show"
  get '/user/:id/edit' => "users#edit"
  get '/user/new' => "users#new"
  post '/user/create' => "users#create"
  post '/user/:id/update' => "users#update"
  post '/user/:id/destroy' => "users#destroy"


end

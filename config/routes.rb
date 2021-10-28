Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/employees" => "employees#create"
  get "/employees" => "employees#index"
  get "/employees/:id" => "employees#show"
  delete "e/mployees/:id" => "employees#destroy"
  patch "/employees/:id" => "employees#update"

  post "/departments" => "departments#create"
  get "/departments" => "departments#index"
  get "/departments/:id" => "departments#show"
  delete "/departments/:id" => "departments#destroy"
  patch "/departments/:id" => "departments#update"
end

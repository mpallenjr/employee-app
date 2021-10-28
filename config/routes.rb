Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/employees" => "employees#create"
  get "/employees" => "employees#index"
  get "/employees/:id" => "employees#show"
  delete "employees/:id" => "employees#destroy"
  patch "employees/:id" => "employees#update"
end

Rails.application.routes.draw do
  #get 'home/index'
  devise_for :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  get 'landing', to:"home#landing"
  get 'leave', to:"home#leave"
  get 'adminhome', to:"admin#adminhome"
  get 'holidays', to: "admin#holidays"
  get 'employeemanagement', to: "admin#employeemanagement"
  
  get 'adminhome', to:"admin#adminhome"
  post 'adminhome', to: "admin#create"
  
  get 'designationmanagement', to: "admin#designationmanagement"
  post 'designationmanagement', to: "admin#create"
 
end

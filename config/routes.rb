Rails.application.routes.draw do
  # get "/one_contact_url/:contact_id" => "contacts#one_contact_method"
  # get "/all_contacts_url" => "contacts#show_contacts_method"
  get "/contacts" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  post "/contacts" => "contacts#create"

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"




  # get "/all_johns" => "contacts#show"
end

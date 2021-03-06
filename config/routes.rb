Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  authenticated :user do
  	root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'
end


# Prefix Verb   URI Pattern               Controller#Action
# welcome_index GET    /welcome/index(.:format)  welcome#index
#          root GET    /                         welcome#index
#         notes GET    /notes(.:format)          notes#index
#               POST   /notes(.:format)          notes#create
#      new_note GET    /notes/new(.:format)      notes#new
#     edit_note GET    /notes/:id/edit(.:format) notes#edit
#          note GET    /notes/:id(.:format)      notes#show
#               PATCH  /notes/:id(.:format)      notes#update
#               PUT    /notes/:id(.:format)      notes#update
#               DELETE /notes/:id(.:format)      notes#destroy
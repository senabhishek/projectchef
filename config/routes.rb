Projectchef::Application.routes.draw do

resources :users

devise_for :users,  path_names: {sign_in: "login", sign_out: "logout"},
                    controllers: {omniauth_callbacks: "omniauth_callbacks"}

root to: 'static_pages#home'
match '/home', to: 'static_pages#home'
match '/faq', to: 'static_pages#faq'
match '/about', to: 'static_pages#about'
match '/contact', to: 'static_pages#contact'
match '/how_it_works', to: 'static_pages#how_it_works'
match '/chef_apply', to: 'user#apply'
match '/user/show', to: 'user#show'
match '/event/new', to: 'event#new'
end

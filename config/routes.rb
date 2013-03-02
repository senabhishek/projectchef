Projectchef::Application.routes.draw do

devise_for :users,  path_names: {sign_in: "login", sign_out: "logout"},
                    controllers: {omniauth_callbacks: "omniauth_callbacks"}


root to: 'static_pages#home'
  match '/home', to: 'static_pages#home'
  match '/faq', to: 'static_pages#faq'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/how_it_works', to: 'static_pages#how_it_works'
end

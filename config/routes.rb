Rails.application.routes.draw do
  devise_for  :users, path: "", 
              path_names: { sign_in: 'login', sign_out: 'logout', registration: 'account', sign_up: 'new'},
              :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'home#index'
end

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  namespace(:blog) do
    get '/', to: 'articles#index'
    resource :articles, only: %i(index show)
  end

  namespace(:admin) do
    resource :articles
  end

  root 'home#index'
end

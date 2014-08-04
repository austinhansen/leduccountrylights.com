# Encoding: utf-8
Rails.application.routes.draw do
  root to: 'static_pages#index'
  namespace :admin do
    resources :snippets, only: [:index, :edit, :update]
    root to: 'snippets#index'
  end
end

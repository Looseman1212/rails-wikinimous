Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # read all
  get 'articles', to: 'articles#index'
  # create article
  get 'articles/new', to: 'articles#new', as: :new_article
  post 'articles', to: 'articles#create'
  # read one
  get 'articles/:id', to: 'articles#show', as: :article
  # update article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
  # delete article
  delete 'articles/:id', to: 'articles#destroy'
end

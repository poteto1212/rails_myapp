Rails.application.routes.draw do
  #postsコントローラのルーティングを自動的に生成してくれる
  resources :posts

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

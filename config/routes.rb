Rails.application.routes.draw do
  resources :users
  
  # トップページにアクセスしたときにユーザー一覧を表示する
  root "users#index"
end

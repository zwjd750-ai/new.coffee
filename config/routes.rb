Rails.application.routes.draw do
 resources :tumblers, only: [:show] do
  member do
    patch :drink # ボタンを押すと残量を減らすアクション
  end
end

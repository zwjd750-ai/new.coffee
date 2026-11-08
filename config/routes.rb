Rails.application.routes.draw do
  # アプリを開いたときのトップページ
  root "static_pages#top"

  # ユーザー登録機能（新規登録画面と保存処理のみ）
  resources :users, only: %i[new create]

  # コーヒー残量管理のタンブラー機能
  resources :tumblers, only: [:show] do
    member do
      patch :drink # ボタンを押すと残量を減らすアクション
    end
  end
end
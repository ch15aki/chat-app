Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  #ユーザー編集のビューファイルを表示する
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end

Rails.application.routes.draw do
  root to: "menus#index"
  get 'menus/index'
  get 'menus/import' => 'menus#my_import'

  resources :menus do
    collection {post :import}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

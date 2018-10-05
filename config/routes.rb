Rails.application.routes.draw do
  get 'authors/v1'
  scope module: :v1 do
    resources :authors, only: [:index, :create, :update, :destroy, :show]
    resources :books, only: [:index, :create, :update, :destroy, :show]
    resources :book_copies, only: [:index, :create, :update, :destroy, :show]
    resources :users, only: [:index, :create, :update, :destroy, :show]
  end
  resources :book_copies, only: [:index, :create, :update, :destroy, :show] do
    member do
      put :borrow
      put :return_book
    end
  end
end

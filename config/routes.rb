Rails.application.routes.draw do
  root to: 'top#show'

  resources :making_tools, only: %i(index)
  resources :gunplas, only: %i(index)

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    sessions:      'users/sessions'
  }

  devise_scope :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :members, controllers: {
    confirmations: 'members/confirmations',
    registrations: 'members/registrations',
    passwords:     'members/passwords',
    sessions:      'members/sessions'
  }

  namespace :member_page, path: 'members' do
    root 'dashboard#show'
    resources :making_tools, only: %i(index new create edit update destroy)
    resources :gunplas, only: %i(index new create edit update destroy) do
      # TODO:production_processess indexは必要になったら作る
      resource :production_process, only: %i(new show create edit update destroy) do
        resources :production_records, only: %i(new show create edit update destroy)
      end
    end
  end
end

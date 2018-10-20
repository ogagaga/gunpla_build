Rails.application.routes.draw do
  root to: 'top#show'

  devise_for :users

  devise_for :members, controllers: {
    confirmations: 'members/confirmations',
    registrations: 'members/registrations',
    passwords:     'members/passwords',
    sessions:      'members/sessions'
  }

  namespace :member_page, path: 'members' do
    root 'dashboard#show'
    resources :making_tools, only: %i(index new create)
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end

Rails.application.routes.draw do
  root to: 'events#index'
  resources :events
  resources :overall_schedules
  resources :memos
end

# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  namespace :active_storage do
    resources :variant_records
  end
  resources :services
  resources :notifications
  resources :announcements
  resources :users
  root to: "dashboard#show"
end

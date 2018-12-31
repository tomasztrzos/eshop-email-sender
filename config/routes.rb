Rails.application.routes.draw do
  root to: 'application#index'
  post 'messages/process', to: 'application#pubsub_adapter'
end

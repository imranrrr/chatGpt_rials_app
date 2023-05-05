Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "chat_gpt#index"
  resources :chat_gpt
  post 'clear', to: 'chat_gpt#clear'
  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do

  get 'ask', to: 'coaching#ask'

  post '/answer', to: 'coaching#answer'

  root to: 'coaching#ask'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

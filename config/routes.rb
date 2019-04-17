Rails.application.routes.draw do
  root 'challenge#home'
  post '/', to: 'challenge#set_name'
  get '/shuffle', to: 'challenge#shuffle_card'
end

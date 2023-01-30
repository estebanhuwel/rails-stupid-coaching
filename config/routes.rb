Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # verb "url//path", to: "controller#action"
  get '/ask', to: 'questions#ask'
  get '/answer', to: 'questions#answer'
  # get "ask", to: "questions#ask", as: :ask
  # get "answer", to: "questions#answer", as: :answer
end

# correct answer =>
# get "ask", to: "questions#ask", as: :ask
# get "answer", to: "questions#answer", as: :answer

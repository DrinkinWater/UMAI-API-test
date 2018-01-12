Rails.application.routes.draw do
  get "/:owner_name/articles" => "articles#index"
  get "/articles/:id" => "articles#show"
  get "/owners" => "owners#index"
  get "/:owner_name" => "owners#show"
end

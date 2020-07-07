Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/drinks" => "drinks#index"

    get "/drinks/:id" => "drinks#show"

    post "/drinks" => "drinks#create"

    delete "/drinks/:id" => "drinks#destroy"

    patch "/drinks/:id" => "drinks#update"
  end
end

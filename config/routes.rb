Lyrics::Application.routes.draw do
  resources :lyrics do
    collection do
      get "search"
    end
  end
  root :to => "lyrics#index"
end

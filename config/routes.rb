Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # `root` is _just_ for the homepage

  get "/about", to: "pages#about"
  # VERB "/PATH", to: "controller#action"

  get "/contact", to: "pages#contact"
end

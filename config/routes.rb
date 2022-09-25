Rails.application.routes.draw do
  get 'products/home'
  root 'products#home'
end

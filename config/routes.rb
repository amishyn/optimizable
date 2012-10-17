# Optimizable::Engine.routes.draw do
#   resources :optimizations, :controller => 'optimizable/optimizations'
# end

Rails.application.routes.draw do
  resources :optimizations, :controller => 'optimizable/optimizations'
end
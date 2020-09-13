Rails.application.routes.draw do
  # root 'listings#index'
  get 'listings', to: 'listings#index'
  get 'listings/ryde', to: 'listings#ryde_index'
  get 'listings/strathfield', to: 'listings#strathfield_index'
end

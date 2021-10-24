Rails.application.routes.draw do
  # root 'listings#index'
  get 'listings', to: 'listings#index'
  get 'listings/ryde', to: 'listings#ryde_index'
  get 'listings/strathfield', to: 'listings#strathfield_index'
  get 'listings/parramatta', to: 'listings#parramatta_index'
  get 'listings/burwood', to: 'listings#burwood_index'
  get 'listings/canada_bay', to: 'listings#canada_bay_index'
  get 'listings/inner_west', to: 'listings#inner_west_index'
  get 'listings/canterbury', to: 'listings#canterbury_index'
  get 'listings/logan', to: 'listings#logan_index'
end

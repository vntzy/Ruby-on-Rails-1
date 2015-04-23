Rails.application.routes.draw do
  paths = [:brands, :categories, :products]
  resources *paths
  paths.each do |path|
    scope path do
      get 'range/:index', to: path.to_s + '#from_index'
      get 'range/:index/:count', to: path.to_s + '#from_index'
    end
  end
end
Rails.application.routes.draw do
  resources :inhouse_menus
  resources :desserts
  resources :inindian_breads
  resources :inrice_dishes
  resources :injhas_special_biryani_dishes
  resources :invegetable_dishes
  resources :insea_foods
  resources :inlamb_dishes
  resources :inchicken_dishes
  resources :inchef_recommendations
  resources :intandooris
  resources :instarters
  root to: 'main#start_page'
end

Rails.application.routes.draw do
  resources :families
  resources :reports
  resource :events
end

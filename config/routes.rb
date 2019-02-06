Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'us_dollars#one_day'
  get '/us_dollars/one_day', to: 'us_dollars#one_day', as: 'usd_one_day'
end

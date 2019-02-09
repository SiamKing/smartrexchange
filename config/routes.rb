Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/us_dollars/one_day')
  get '/us_dollars/one_day', to: 'us_dollars#one_day', as: 'usd_one_day'
  get '/us_dollars/one_week', to: 'us_dollars#one_week', as: 'usd_one_week'
  get '/us_dollars/one_month', to: 'us_dollars#one_month', as: 'usd_one_month'
  get '/us_dollars/three_month', to: 'us_dollars#three_month', as: 'usd_three_month'
  get '/us_dollars/one_year', to: 'us_dollars#one_year', as: 'usd_one_year'
end

Rails.application.routes.draw do
  get '/' => 'pages#index'
  post '/ocr' => 'pages#ocr'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

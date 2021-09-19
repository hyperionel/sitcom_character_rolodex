Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/sitcom_characters', to: "sitcom_characters#index"
  get '/character_images/:id', to: "image_generator#generate"
end

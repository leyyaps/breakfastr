Rails.application.routes.draw do
  
  get 'pastries/index'

  get 'pastries/show'

  get 'pastries/view'

  get 'pastries/edit'

 root "pastries#index"
end

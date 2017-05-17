Rails.application.routes.draw do
	namespace :api do
	resources :students,except:[:new,:edit]

end
root to: "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

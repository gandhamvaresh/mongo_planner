RajuDemo::Application.routes.draw do

root :to => 'users#index'
  
    resources :users do
     collection do
      get 'home','contact', "my_plans"
     end

    end
    
 

 
end

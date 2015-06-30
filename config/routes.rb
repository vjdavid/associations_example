Rails.application.routes.draw do

 resources :people do
   member do
     put 'tasks', to: 'tasks#update_tasks'
     get 'tasks', to: 'tasks#get_tasks'
     patch 'tasks', to: 'tasks#updates_tasks'
   end
 end

 resources :tasks do
   member do
     put 'people', to: 'people#update_people'
     get 'people', to: 'people#get_people'
     patch 'people', to: 'people#patch_people'
   end
 end

end

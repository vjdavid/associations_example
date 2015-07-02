Rails.application.routes.draw do

 resources :people do
   member do
     put 'tasks/:id', to: 'people#update_tasks'
     get 'tasks', to: 'people#get_tasks'
     patch 'tasks/:id', to: 'people#patch_update_tasks'
   end
 end

 resources :tasks do
   member do
     put 'people/:id', to: 'tasks#update_people'
     get 'people', to: 'tasks#get_people'
     patch 'people/:id', to: 'tasks#patch_update_people'
   end
 end

end

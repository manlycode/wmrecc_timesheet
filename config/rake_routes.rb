                  Prefix Verb   URI Pattern                                                  Controller#Action
                    root GET    /                                                            static_pages#home
                    help GET    /help(.:format)                                              static_pages#help
                 signout GET    /signout(.:format)                                           static_pages#destroy
           user_requests GET    /users/:user_id/requests(.:format)                           requests#index
                         POST   /users/:user_id/requests(.:format)                           requests#create
        new_user_request GET    /users/:user_id/requests/new(.:format)                       requests#new
       edit_user_request GET    /users/:user_id/requests/:id/edit(.:format)                  requests#edit
            user_request GET    /users/:user_id/requests/:id(.:format)                       requests#show
                         PATCH  /users/:user_id/requests/:id(.:format)                       requests#update
                         PUT    /users/:user_id/requests/:id(.:format)                       requests#update
                         DELETE /users/:user_id/requests/:id(.:format)                       requests#destroy
                         GET    /users/:user_id/requests/:request_id/approval_flow(.:format) requests#approval_flow
user_requests_update_all GET    /users/:user_id/requests/update_all(.:format)                requests#update_all_requests
                   users GET    /users(.:format)                                             users#index
                         POST   /users(.:format)                                             users#create
                new_user GET    /users/new(.:format)                                         users#new
               edit_user GET    /users/:id/edit(.:format)                                    users#edit
                    user GET    /users/:id(.:format)                                         users#show
                         PATCH  /users/:id(.:format)                                         users#update
                         PUT    /users/:id(.:format)                                         users#update
                         DELETE /users/:id(.:format)                                         users#destroy
              categories GET    /categories(.:format)                                        categories#index
                         POST   /categories(.:format)                                        categories#create
            new_category GET    /categories/new(.:format)                                    categories#new
           edit_category GET    /categories/:id/edit(.:format)                               categories#edit
                category GET    /categories/:id(.:format)                                    categories#show
                         PATCH  /categories/:id(.:format)                                    categories#update
                         PUT    /categories/:id(.:format)                                    categories#update
                         DELETE /categories/:id(.:format)                                    categories#destroy
             departments GET    /departments(.:format)                                       departments#index
                         POST   /departments(.:format)                                       departments#create
          new_department GET    /departments/new(.:format)                                   departments#new
         edit_department GET    /departments/:id/edit(.:format)                              departments#edit
              department GET    /departments/:id(.:format)                                   departments#show
                         PATCH  /departments/:id(.:format)                                   departments#update
                         PUT    /departments/:id(.:format)                                   departments#update
                         DELETE /departments/:id(.:format)                                   departments#destroy
                sessions POST   /sessions(.:format)                                          sessions#create
                 session DELETE /sessions/:id(.:format)                                      sessions#destroy
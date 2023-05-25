# Rails.application.routes.draw do
#   resources :posts, only:[:index, :new, :create, :edit, :update, :destroy]

#     collection do
#           delete 'destroy_all', action: :destroy_all
#         end

#   resources :posts, only:[:index, :new, :create, :edit, :update, :destroy]
#        delete 'destroy_all', action: :destroy_all 
    
#   end
# end

Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      delete 'destroy_all', action: :destroy_all
    end
  end
end
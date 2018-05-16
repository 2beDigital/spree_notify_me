Spree::Core::Engine.routes.draw do
    namespace :admin do
    	resources :wished_products
    end
end
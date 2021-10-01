Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'product#list'
   get 'product/list'
   get 'product/new'
   post 'product/create'
   patch 'product/update'
   get 'product/list'
   get 'product/show'
   get 'product/edit'   
   get 'product/delete'
   get 'product/update'

end

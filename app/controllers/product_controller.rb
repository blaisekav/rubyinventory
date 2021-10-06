class ProductController < ApplicationController

   def list
      @products = Product.all
	  
   end
   
    def json_list
      @products = Product.all
	  render json: @products

   end  

   def show
      @product = Product.find(params[:id])
   end
   
   def product_params
      params.require(:products).permit(:name, :description, :price)
   end
   
   def create
      @product = Product.new(product_params)
	        
      if @product.save
         @products = Product.all
         redirect_to :action => 'list'
      else
         render :action => 'new'
      end
   end
   
   def edit
      @product = Product.find(params[:id])
   end
     
   def product_param
      params.require(:product).permit(:name, :description, :price)
   end
   
   def update
      @product = Product.find(params[:id])
      
      if @product.update(product_param)
         redirect_to :action => 'show', :id => @product, :notice => "Product updated"
      else
         @products = Product.all
         render :action => 'edit'
      end
   end
   
   def delete
      Product.find(params[:id]).destroy 
	  render :notice => ''
      redirect_to :action => 'list'
   end   
end

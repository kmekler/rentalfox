class ReviewsController < ApplicationController

def index
	
	if params[:address]
	  @reviews = Review.where(:'address' => params[:address]) 

	  @back = 1
    else
	  @reviews =  Review.all
	  @back = nil
    end
 end	

def show 
	@review = Review.find(params[:id])
end

def filter
   
   redirect_to reviews_path(:address => params[:address])
end

def new
	@review = Review.new
end

def create
	@review = Review.new(params.require(:review).permit(:address, :landlord, :building, :unit, :area))

	if @review.save
		redirect_to reviews_path
	else
		render 'new'
	end	
end

def edit
	@review = Review.find(params[:id])
end	

def update
	@review = Review.find(params[:id])
	if @review.update_attributes(params.require(:review).permit(:address, :landlord, :building, :unit, :area))
		redirect_to reviews_path
	else
		render 'edit'
	end	
end	

def destroy
	@review = Review.find(params[:id])
	@review.destroy
	redirect_to reviews_path
end

end
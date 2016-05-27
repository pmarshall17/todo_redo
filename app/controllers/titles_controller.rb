class TitlesController < ApplicationController
  def index
  	@titles = Title.all
  end

  def show
  	@title = Title.find(params[:id])
  end

  def edit
  	#GET--should hsow a form to edit a school
  	@title = Title.find(params[:id])
  end  


	def update
  	@title = Title.find(params[:id])
	  if @school.update(title_params)
	    redirect_to title_path
	  else
	    render :edit
	  end
	end

  def new
  	@title = Title.new
  end

  def create
		# POST---this will create a new book title in
		@title = Title.new(title_params)
		if @title.save
			redirect_to titles_path
		else
			render :new
		end	
  end

  def destroy
  	#method is responsible for deleting single title out of the database
		Title.find(params[:id]).destroy
		redirect_to title_path  
  end

  
  private

  def title_params
  	params.require(:title).permit(:title)
  end

end

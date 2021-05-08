class PostingsController < ApplicationController
  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
     if @restaurant.save
      redirect_to posting_path(@posting)
    else
      render "new"
    end
  end

  def show
    @posting = Posting.find(params[:id])
    @comment = Comment.new
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def postings_params
    params.require(:posting).permit(:title, :description, :price)
  end

end

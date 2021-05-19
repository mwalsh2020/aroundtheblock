class PostingsController < ApplicationController
  def index
    @postings = Posting.all
    @posting = Posting.new
  end


  def create
    @posting = Posting.new(posting_params)
    @posting.user = current_user
    @postings = Posting.all
     if @posting.save
      redirect_to posting_path(@posting)
    else
      render "index"
    end
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :description, :price, :photo)
  end

end

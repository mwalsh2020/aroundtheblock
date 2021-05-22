class ApplicationsController < ApplicationController
  before_action :set_posting, except: :approve
    # t.string "comment"
    # t.bigint "user_id"
    # t.bigint "posting_id"
    # belongs to a post and a user

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @application.user = current_user
    @application.posting = @posting
    if @application.save
      redirect_to @posting
    else
      render :new
    end
  end

  def approve
    @application = Application.find(params[:id])
    @application.is_accepted = true
    @application.save
    redirect_to posting_path(@application.posting)
  end

  private

  def set_posting
    @posting = Posting.find(params[:posting_id])
  end

  def application_params
    params.require(:application).permit(:comment)
  end
end

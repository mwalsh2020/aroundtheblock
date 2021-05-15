class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @recent_posts = Posting.last(3)
    @posting1 = @recent_posts[0]
    @posting2 = @recent_posts[1]
    @posting3 = @recent_posts[2]


  end



end

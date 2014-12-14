class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @user = User.find(current_user)
  	  @micropost = current_user.microposts.build if logged_in?
  	  @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def help
  end

  def terms
  end

end



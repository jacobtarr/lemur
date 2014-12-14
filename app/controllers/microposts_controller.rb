class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:show, :create, :destroy]
  before_action :correct_user,   only: :destroy

	def show
    @micropost = Micropost.find(params[:id])
	end

	def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Your post has been published!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

	def destroy
    @micropost.destroy
    flash[:success] = "Post deleted"
    redirect_to request.referrer || root_url
  end

	private
	
		def micropost_params
      params.require(:micropost).permit(:headline, :date, :location, :content)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
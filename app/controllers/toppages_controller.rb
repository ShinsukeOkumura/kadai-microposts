class ToppagesController < ApplicationController
  def index
		if logged_in?
			# form_for用
			@micropost = current_user.microposts.build
			#p @micropost
			#@microposts = current_user.microposts.order('created_at DESC').page(params[:page])
			@microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
			#@user = current_user
		end
  end
end

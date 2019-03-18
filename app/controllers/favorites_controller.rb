class FavoritesController < ApplicationController
	before_action :require_user_logged_in
  
	def create
		#user = User.find(params[:user_id])
		post = Micropost.find(params[:micropost_id])
		# Userクラスのfavoriteメソッド
		current_user.favorite(post)
		flash[:success] = 'お気に入りに追加しました.'
		#redirect_to user
		redirect_back(fallback_location: root_path)
  end

  def destroy
		#user = User.find(params[:user_id])
		post = Micropost.find(params[:micropost_id])
		# Userクラスのunfavoriteメソッド
		current_user.unfavorite(post)
		flash[:success] = 'お気に入りを外しました.'
		#redirect_to user
		redirect_back(fallback_location: root_path)
  end
end

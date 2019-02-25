class Relationship < ApplicationRecord
  belongs_to :user
  #belongs_to :follow
  # モデル:followのカラム名:follow_idはFollowクラスでは無く、Userクラスを参照するように指定する。
	belongs_to :follow, class_name: 'User'
end

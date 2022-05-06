class BookComment < ApplicationRecord

  belongs_to :user  #Comment.userでコメントの所有者を取得
  belongs_to :book  #Comment.postでそのコメントがされた投稿を取得

  validates :comment_content, presence: true
end

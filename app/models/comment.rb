class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item
  acts_as_votable()

  def comment_likes
    get_likes.size
  end

  def item_created_at
    item.created_at.strftime("%A, %b %d, %Y")
  end
end

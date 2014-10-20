class Post < ActiveRecord::Base
  has_many :comments

  validates_presence_of :body, :title

  def self.first_ten_ordered
    order('published_at DESC').limit(10)
  end
end

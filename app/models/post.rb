class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages,dependent: :destroy

  validates :content,:title, presence: true
  validates :title, length: {minimum: 7}
end

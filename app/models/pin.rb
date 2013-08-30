class Pin < ActiveRecord::Base

  attr_accessible :description, :image
  has_attached_file :image


  validates :user_id, presence: true
  validates :description, presence: true
  validates_attachment :image, presence:true, 
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'image/bmp']},
  															size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "160x120>" }
end

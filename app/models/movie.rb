class Movie < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :reviews
                                              # #pound crops the image at 400x600
	has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

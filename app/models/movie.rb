class Movie < ApplicationRecord
  belongs_to :user
                                              # #pound crops the image at 400x600
		has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

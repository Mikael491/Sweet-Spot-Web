class Product < ApplicationRecord
  has_attached_file :item_image, styles: { medium: "400x400>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/
end

class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: "400x400>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_format_of :price, :with => /\A\d+(\.\d{2})?$\z/
end

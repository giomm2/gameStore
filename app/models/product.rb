class Product < ApplicationRecord
  belongs_to :console
  belongs_to :category

  has_attached_file :image_one, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :image_two, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :image_three, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_three, content_type: /\Aimage\/.*\z/
end

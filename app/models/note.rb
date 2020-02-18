class Note < ApplicationRecord
  belongs_to :user
  validates :title,presence: true
  validates :author,presence: true
  validates :date,presence: true
  validates :image,presence: true
  validates :story,presence: true
  validates :review,presence: true
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Note.where(['title LIKE(?) or author LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Note.all
    end
  end
end

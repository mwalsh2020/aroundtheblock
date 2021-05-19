class Posting < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :applications
  has_one_attached :photo
end

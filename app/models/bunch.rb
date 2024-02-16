class Bunch < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :flowers, through: :bookmarks
  validates :name, presence: true
end

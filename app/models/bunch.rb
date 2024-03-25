class Bunch < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :flowers, through: :bookmarks
  accepts_nested_attributes_for :bookmarks
  validates :name, presence: true
end

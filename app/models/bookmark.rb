class Bookmark < ApplicationRecord
  belongs_to :flower
  belongs_to :bunch
  validates :flower_id, uniqueness: { scope: :bunch_id }
  validates :quantity, presence: true
end

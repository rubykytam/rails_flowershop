class Flower < ApplicationRecord
  has_many :bookmarks
  validates :name, presence: true

  def custom_label
    "#{name} - #{color} - $#{price}"
  end

end

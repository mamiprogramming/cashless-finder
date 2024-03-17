class Venue < ApplicationRecord
  belongs_to :user
  validates :user_name, presence: true
  validates :prefecture_id, presence: true
  validates :prefecture_id,
            numericality: { other_than: 1, message: "を入力してください" }
end

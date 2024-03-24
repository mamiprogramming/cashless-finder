class Venue < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :place_name, presence: true
  validates :user_id, presence: true
  validates :prefecture_id, presence: true
  validates :prefecture_id,
            numericality: { other_than: 1, message: "を入力してください" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end

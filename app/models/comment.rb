class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one_attached :image

  validates :text, presence: true
  validates :cashless_id, presence: true
  validates :cashless_id,
            numericality: { other_than: 1, message: "を入力してください" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cashless
end

class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :attendances
  has_many :comments, dependent: :destroy
  has_many :attendances, dependent: :destroy
  include PgSearch
  pg_search_scope :search_by_city,
                  against: :city,
                  using: {
                    tsearch: { prefix: true, any_word: true }
                  }
end

class Worker < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  validates :name, :specialty, rating, presence: true
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CAT_REST = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :category, presence: true
  validates :category, inclusion: {in: CAT_REST}
end

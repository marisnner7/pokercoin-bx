class Pokemon < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :price, presence: true
  validates :base_experience, presence: true

end


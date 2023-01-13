# frozen_string_literal: true

class Brand < ApplicationRecord
  validates :name, length: { is: 4 }
  validates :name, presence: true, uniqueness: true
  has_many :models, dependent: :destroy
end

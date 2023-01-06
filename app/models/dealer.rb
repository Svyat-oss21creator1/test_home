# frozen_string_literal: true

class Dealer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :cars, dependent: :destroy
end

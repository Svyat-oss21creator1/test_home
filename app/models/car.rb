# frozen_string_literal: true

class Car < ApplicationRecord
  validates :name, :dealer_id, :model_id, presence: true
  belongs_to :dealer, optional: true
  belongs_to :model, optional: true
  has_one_attached :image
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end

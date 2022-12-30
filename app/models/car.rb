class Car < ApplicationRecord
    validates :name, :dealer_id,:model_id,  presence: true
    belongs_to :dealer,  :optional => true
    belongs_to :model, :optional => true
end

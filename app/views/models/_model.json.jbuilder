# frozen_string_literal: true

json.extract! model, :id, :name, :cars_count, :parent_id, :description, :created_at, :updated_at
json.url model_url(model, format: :json)

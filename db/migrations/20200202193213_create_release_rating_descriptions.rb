# frozen_string_literal: true

Hanami::Model.migration do
  change do
    create_table :release_rating_descriptions do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      foreign_key :release_id, :releases, null: false, index: true
      foreign_key :rating_description_id, :rating_descriptions, null: false, index: true

      unique %i[release_id rating_description_id]
    end
  end
end

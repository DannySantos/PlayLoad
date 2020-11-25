# frozen_string_literal: true

class PublicationEditionRepository < Hanami::Repository
  include ::BaseRepository

  associations do
    belongs_to :publication
    belongs_to :edition
  end
end

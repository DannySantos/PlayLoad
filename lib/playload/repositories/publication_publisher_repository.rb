# frozen_string_literal: true

class PublicationPublisherRepository < Hanami::Repository
  include ::BaseRepository

  associations do
    belongs_to :publication
    belongs_to :publisher
  end
end

# frozen_string_literal: true

class CoverRepository < Hanami::Repository
  include ::BaseRepository

  associations do
    belongs_to :release
  end
end

class AudioSegment < ApplicationRecord
  belongs_to :user
  belongs_to :conference

  include PgSearch::Model
  # pg_search_scope :global_search,
  # against: [:user,:conference,:audioStart,:audioEnd],
  # associated_against: {
  #   excludeUser: [:user],
  # },
  # using: {
  #   tsearch: {any_word: true}
  # }
end

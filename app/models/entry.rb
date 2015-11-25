class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, :deadline, :description, :institute, :country, :website, presence: true, length: { maximum: 250}

  # this doesn't appear to be functional / used, so I'd delete it!
  def self.by_category(category)
  end
end

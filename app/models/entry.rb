class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, :deadline, :description, :institute, :country, :website, presence: true, length: { maximum: 250}

end

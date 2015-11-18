class Entry < ActiveRecord::Base
  belongs_to :user
  validates :title, :deadline, :description, :institute, :country, :website, presence: true

end

class Entry < ActiveRecord::Base
  validates :title, :deadline, :description, :institute, :country, :website, presence: true


end

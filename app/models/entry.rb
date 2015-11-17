class Entry < ActiveRecord::Base
  has_many :entries
  belongs_to :user
  validates :title, :deadline, :description, :institute, :country, :website, presence: true

end

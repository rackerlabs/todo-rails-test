class List < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  attr_accessible :title

  validates :title, presence: true
end

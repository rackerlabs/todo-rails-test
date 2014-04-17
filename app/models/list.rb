class List < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  attr_accessible :title, :tasks_attributes

  validates :title, presence: true
end

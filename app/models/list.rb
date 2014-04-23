class List < ActiveRecord::Base
  has_many :tasks, dependent: :destroy, order: "due_date"
  accepts_nested_attributes_for :tasks, allow_destroy: true, :reject_if => lambda { |c| c[:name].blank? }
  attr_accessible :title, :tasks_attributes

  validates :title, presence: true
end

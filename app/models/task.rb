class Task < ActiveRecord::Base
  has_many :statuses
  has_many :people, through: :statuses
end

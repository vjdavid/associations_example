class Person < ActiveRecord::Base
  has_many :statuses
  has_many :tasks, through: :statuses
end

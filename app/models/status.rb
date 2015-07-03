class Status < ActiveRecord::Base
  belongs_to :person
  belongs_to :task
end

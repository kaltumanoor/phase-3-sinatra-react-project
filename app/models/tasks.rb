class Task < ActiveRecord::Base 
    belongs_to :user
    enum :status, [ :CREATED, :ONGOING, :COMPLETED, :CANCELLED ]
end
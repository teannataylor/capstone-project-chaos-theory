class Task < ApplicationRecord
    belongs_to :employee
    belongs_to :project
  
    validates :name, presence: true
  end
class Project < ApplicationRecord
    belongs_to :team
    has_many :tasks
    has_many :employees, through: :tasks
  
  
      validates :name, presence: true
      validates :due_date, presence: true
    end
class Team < ApplicationRecord
    has_many :projects
    has_many :employees
    has_many :tasks, through: :employees
  
    validates :name, presence: true
    validates :department, presence: true
  end

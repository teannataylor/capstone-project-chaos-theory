class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :department, :size
  
    belongs_to :project
    has_many :employees
    has_many :tasks, through: :employees
end

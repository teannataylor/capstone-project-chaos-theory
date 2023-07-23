class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :on_time, :team_id

  belongs_to :team
  has_many :tasks
  has_many :employees, through: :tasks
end

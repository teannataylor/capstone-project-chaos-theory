class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :is_admin, :team_id
  
  # :team_id

  belongs_to :team
  has_many :tasks
  has_many :projects, through: :tasks
end

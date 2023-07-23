class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :status, :project_id, :employee_id
  
  belongs_to :employee
  belongs_to :project
end

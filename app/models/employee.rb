class Employee < ApplicationRecord
    has_secure_password
    belongs_to :team
    has_many :tasks
    has_many :projects, through: :tasks
  
      validates :name, presence: true
      validates :email, presence: true, uniqueness: true
      validates :password, presence: true, length: { minimum: 3 } # Add this line
    
      validate :password_match
    
      def password_match
        errors.add(:password_confirmation, "Passwords Don't Match") if password != password_confirmation
      end
    end
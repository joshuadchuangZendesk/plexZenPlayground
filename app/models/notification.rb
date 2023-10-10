class Notification < ApplicationRecord
    # Validation for presence of description
    validates :description, presence: true
    
    # Validation for uniqueness of description (optional, depends on your requirements)
    validates :description, uniqueness: true
    
    # Validation for the 'active' attribute to be boolean
    validates :active, inclusion: { in: [true, false] }
    
    # Validation for the 'conditions' attribute (add your specific validation rules)
    # Example: Require 'conditions' to be present and at least 5 characters long
    validates :conditions, presence: true, length: { minimum: 5 }
    
    # Validation for the 'actions' attribute (add your specific validation rules)
    # Example: Require 'actions' to be a valid JSON object
    validate :validate_actions_json_format
    private

    def validate_actions_json_format
      errors.add(:actions, 'must be a valid JSON object') unless actions.is_a?(Hash)
      
    rescue JSON::ParserError
      errors.add(:actions, 'must be a valid JSON object')
    end
end
class Issue < ApplicationRecord
  has_many :issue_components, class_name: 'Issue::Component'
  has_many :component_triggers, class_name: 'Component::Trigger'
  belongs_to :account
end

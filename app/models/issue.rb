class Issue < ApplicationRecord
  has_many :issue_components, class_name: 'Issue::Component'
  has_many :component_triggers, class_name: 'Component::Trigger'
  has_many :issue_exemplars, class_name: 'Issue::Exemplar'
  belongs_to :account
end

class Issue::Component < ApplicationRecord
  has_many :component_triggers, class_name: 'Component::Trigger'
  belongs_to :issue
end

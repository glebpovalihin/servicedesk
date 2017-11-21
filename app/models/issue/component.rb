class Issue::Component < ApplicationRecord
  has_many :component_triggers, class_name: 'Component::Trigger'
  belongs_to :issue

  def next_component
    next_component_id && Issue::Component.find(next_component_id)
  end

  def previous_component
    previous_component_id && Issue::Component.find(previous_component_id)
  end
end

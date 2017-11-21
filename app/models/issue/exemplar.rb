class Issue::Exemplar < ApplicationRecord
  belongs_to :issue
  belongs_to :contact

  before_create :set_current_state

  def current_state
    Issue::Component.find(self.current_state_id)
  end

  private

  def set_current_state
    self.current_state_id = Issue::Component.find_by(issue_id: issue_id, previous_component_id: nil).id
  end
end

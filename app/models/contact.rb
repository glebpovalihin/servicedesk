class Contact < User
  has_many :issue_exemplars, class_name: 'Issue::Exemplar'
end
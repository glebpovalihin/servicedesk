# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
account = Account.create(name: 'home', issues_count: 2)
Employee.create(email: 'glee812@yandex.ru', account_id: account.id, password: 'Darksider12')
issue = Issue.create(name: 'first', account_id: account.id, time_total: 7)
first = Issue::Component.create(name: 'first', description: 'descr', execution_time: 2, issue_id: issue.id)
last = Issue::Component.create(name: 'last', description: 'descr2', execution_time: 3, issue_id: issue.id, previous_component_id: first.id)
first.update(next_component_id: last.id)
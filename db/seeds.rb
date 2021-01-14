# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
family_a = Family.create(name: "Browns family")
report_a = Report.create(headline: "Some HEadline", content: "Some Content about some event")
event_a = Event.create(family: family_a, report: report_a)
family_a = Family.create(name: "Browns family")
report_a = Report.create(headline: "Some HEadline", content: "Some Content about some event")
report_a2 = Report.create(headline: "Some HEadline", content: "Some Content about some event")
report_a3 = Report.create(headline: "Some HEadline", content: "Some Content about some event")
report_a4 = Report.create(headline: "Some HEadline", content: "Some Content about some event")
event_a = Event.create(family: family_a, report: report_a)

family_b = Family.create(name: "Smith family")
report_b = Report.create(headline: "Some HEadline", content: "Some Content about some event")
event_b = Event.create(family: family_b, report: report_b)
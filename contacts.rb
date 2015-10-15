require_relative "contacts_class"
require_relative "person_class"

person = Person.new ({
  first_name: "Alex",
  last_name: "Miller"
})

p person.first_name
p person.date_created

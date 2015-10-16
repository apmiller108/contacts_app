require_relative "contacts_class"
require_relative "person_class"

contact_lib = Contacts.new
person = Person.new ({
  first_name: "Alex",
  last_name: "Miller"
})

contact_lib.add(person)


contact_lib.search "alex"

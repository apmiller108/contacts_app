require_relative "contacts_class"
require_relative "person_class"

contact_lib = Contacts.new

begin
  person_details = {
    first_name: "Alex",
    last_name: "Miller"
  }
  person = Person.new(person_details)
rescue ArgumentError => e
  puts "You got an \"#{e.message}\" error."
  puts e.backtrace
end

contact_lib.add(person)
p contact_lib

# contact_lib.search "alex"

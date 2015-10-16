require_relative "contacts_class"
require_relative "person_class"

contact_lib = Contacts.new

begin
  person_details = {
    first_name: "Alex",
    last_name: "Miller",
    email: "apmiller108@yahoo.com",
    mobile_phone: "319-621-1065"
  }
  person = Person.new(person_details)
rescue ArgumentError => e
  puts e.message
end


contact_lib.add(person)

begin
  keyword = {}
  contact_lib.s earch({})
rescue
  puts "#{keyword} is not valid"
end

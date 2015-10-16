class Contacts
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def add(person)
    @contacts << person
  end

  def list
    @contacts.each do |contact|
      puts "#{contact.first_name} #{contact.last_name}"
    end
  end

  def show(contact)
    puts "#{contact.first_name} #{contact.last_name}"
  end

  def search(keyword)
    keyword.downcase
    @contacts.each do |contact|
      if contact.first_name.downcase.include?(keyword)|| contact.last_name.downcase.include?(keyword)
        show contact
      else
        puts "No contacts found"
      end
    end
  end

  def delete
  end

end

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

  def search
  end

  def delete
  end

end

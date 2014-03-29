class Rolodex
  def initialize
    @contacts = []
  end

  def add_contact(first_name, last_name, email, notes)
    contact = Contact.new
    contact.first_name = first_name
    contact.last_name = last_name
    contact.email = email
    contact.notes = notes

    @contacts << contact
  end

  def display_all_contacts
    @contacts.each do |contact|
      puts contact
      puts "    -----    "
    end
  end

  def display_contact(id)
    display = nil
    @contacts.each do |contact|
      if contact.id == id
        display = contact
      end
    end
    puts display
  end
end
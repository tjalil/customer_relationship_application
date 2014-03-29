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

  def remove_contact(id)
    remove = nil
    @contacts.each do |contact|
      if contact.id == id
        remove = contact
      end
    end
    @contacts.delete(remove)
  end

  def display_attribute(att_input)
    att_contacts = []
    @contacts.each do |contact|
      if att_input == 'firstname'
        att_contacts << contact.first_name
      elsif att_input == 'lastname'
        att_contact << contact.last_name
      elsif att_input == 'email'
        att_contact << contact.email
      elsif att_input == 'notes'
        att_contact << contact.notes
      end
    end
    puts att_contacts
  end
end
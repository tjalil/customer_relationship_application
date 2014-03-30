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
        att_contacts << contact.last_name
      elsif att_input == 'email'
        att_contacts << contact.email
      elsif att_input == 'notes'
        att_contacts << contact.notes
      end
    end
    puts att_contacts
  end

  def edit_contact(id, att_input, new_att_input)
    @contacts.each do |contact|
      if contact.id == id
        if att_input == 'firstname'
          contact.first_name = new_att_input
        elsif att_input == 'lastname'
          contact.last_name = new_att_input
        elsif att_input == 'email'
          contact.email = new_att_input
        elsif att_input == 'notes'
          contact.notes = new_att_input
        end
      end
    end
  end
end
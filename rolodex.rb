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
        att_contacts << "userID: #{contact.id}"
        att_contacts << "First Name: #{contact.first_name.capitalize}\n    -----    "
      elsif att_input == 'lastname'
        att_contacts << "userID: #{contact.id}"
        att_contacts << "Last Name: #{contact.last_name.capitalize}\n    -----    "
      elsif att_input == 'email'
        att_contacts << "userID: #{contact.id}"
        att_contacts << "Email: #{contact.email}\n    -----    "
      elsif att_input == 'notes'
        att_contacts << "userID: #{contact.id}"
        att_contacts << "Notes: #{contact.notes.capitalize}\n    -----    "
      end
    end
    puts att_contacts
  end

  def edit_contact(id, att_input, new_att_input)
    @contacts.each do |contact|
      if contact.id == id
        if att_input == 'firstname'
          if new_att_input == 'No'
            return ""
          else
            contact.first_name = new_att_input
          end
        elsif att_input == 'lastname'
          if new_att_input == 'No'
            return ""
          else
            contact.last_name = new_att_input
          end
        elsif att_input == 'email'
          if new_att_input == 'No'
            return ""
          else
            contact.email = new_att_input
          end
        elsif att_input == 'notes'
          if new_att_input == 'No'
            return ""
          else
            contact.notes = new_att_input
          end
        end
      end
    end
  end
end
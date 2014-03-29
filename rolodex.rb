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
end
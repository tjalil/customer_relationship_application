class Contact
  attr_accessor :first_name, :last_name, :email, :notes

  def to_s
    "First Name: #{first_name}\nLast Name: #{last_name}\nEmail: #{email}\nNotes: #{notes}"
  end
end
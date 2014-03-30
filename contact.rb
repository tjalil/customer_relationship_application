class Contact
  attr_accessor :id, :first_name, :last_name, :email, :notes, :time_stamp

  @@counter = 0

  def initialize
    @id = Contact.get_id
    @notes = []
  end

  def to_s
    "userID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nNotes: \n#{@notes}\nUser Creation: #{time_stamp}"
  end

  def self.get_id
    @@counter += 1
    @@counter
  end
end
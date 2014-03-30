require './rolodex'
require './contact'

class Runner
  def initialize
    @rolodex = Rolodex.new
  end

  def main_menu
    puts "---------- TAHA'S CRM ----------"
    puts "1. Add a contact"
    puts "2. Display a contact"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Display all contacts"
    puts "6. Display all contacts by First Name, Last Name, Email or Notes"
    puts "0. Exit"
  end

  def add_contact
    puts "Enter your first name"
    first_name = gets.chomp.capitalize!

    puts "Enter your last name"
    last_name = gets.chomp.capitalize!

    puts "Enter your email address"
    email = gets.chomp

    puts "Enter any notes"
    notes = gets.chomp.capitalize!

    time_stamp = ""

    @rolodex.add_contact(first_name, last_name, email, notes, time_stamp)
  end

  def display_contact
    puts "Enter userID to display user information"
    id = gets.chomp.to_i
    @rolodex.display_contact(id)
  end

  def remove_contact
    puts "Enter userID to remove user"
    id = gets.chomp.to_i
    
    puts ""
    puts "#{@rolodex.display_contact(id)}"
    puts "Are you sure you want to delete this user? Enter 'Y' or 'N'"

    confirmation = gets.chomp.upcase
    if confirmation == 'Y'
      @rolodex.remove_contact(id)
    elsif confirmation == 'N'
      return ""
    end
  end

  def edit_contact
    puts "Enter userID to access the user being edited"
    id = gets.chomp.to_i

    puts "What attribute would you like to edit for #{id}?\n'firstname' for First Name\n'lastname' for Last Name\n'email' for Email\n'notes' for Notes"
    att_input = gets.chomp.downcase

    puts "What is the new value you would like to give this attribute?\n Type 'no' to return to Main Menu"
    new_att_input = gets.chomp.capitalize!
    @rolodex.edit_contact(id, att_input, new_att_input)

    if new_att_input == "No"
      return ""
    elsif
      puts "Success! Here is the edited user information: "
      @rolodex.display_contact(id)
    end
  end

  def display_all_contacts
    puts "----- ALL CONTACTS -----"
    @rolodex.display_all_contacts
  end

  def display_attribute
    puts "Type the attribute you want to display\n'firstname' for First Name\n'lastname' for Last Name\n'email' for Email\n'notes' for Notes"
    att_input = gets.chomp.downcase
    puts "    -----    "
    @rolodex.display_attribute(att_input)
  end

  def run_program
    done = false
    while !done
      main_menu
      input = gets.chomp.to_i

      if input == 0
        done = true
      elsif input == 1
        add_contact
      elsif input == 2
        display_contact
      elsif input == 3
        remove_contact
      elsif input == 4
        edit_contact
      elsif input == 5
        display_all_contacts
      elsif input == 6
        display_attribute
      end
    end
  end
end

user = Runner.new
user.run_program
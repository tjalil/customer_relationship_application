require './rolodex.rb'
require './contact.rb'

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
    #puts "6. Display a contact's certain attribute"
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
    notes = gets.chomp

    @rolodex.add_contact(first_name, last_name, email, notes)
  end

  def display_contact
    puts "Enter userID to display user information"
    user_id = gets.chomp.to_i
    @rolodex.display_contact(user_id)
  end

  def remove_contact
  end

  def edit_contact
  end

  def display_all_contacts
    puts "----- ALL CONTACTS -----"
    @rolodex.display_all_contacts
  end

  # def display_attribute
  # end

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
      # elsif input == 3
      #   remove_contact
      # elsif input == 4
      #   edit_contact
      elsif input == 5
        display_all_contacts
      # elsif input == 6
      #   display_attribute
      end
    end
  end
end

user = Runner.new
user.run_program
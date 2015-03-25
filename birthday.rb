require 'CSV'

class Birthday

  puts 'Hello there whats your first name?'
  name = gets.chomp

  csv = CSV.foreach('birthday_data.csv', headers: :true) do |row|
    if name == row["first_name"]
      puts row["first_name"], row["last_name"], row["date_of_birth"], row["email"]
    end
  end

end

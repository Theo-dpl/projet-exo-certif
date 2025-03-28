# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Booking.destroy_all
puts "Cleaning bookings..."
Cowerking.destroy_all
puts "Cleaning tools..."
User.destroy_all
puts "Cleaning users..."

theo = User.create!(email: "theo@mail.com", password: "ouioui")
p theo

wagon = User.create!(email: "wagon@mail.com", password: "ouioui")
p wagon

cowerking = Cowerking.new(name: "Bureau du theo", price_per_day: 59, description: "Grand bureau avec deyx écrans", address: "Lille", photo: "https://imgs.search.brave.com/jF3YDcthdaUmw07UF1od74Ud9H62A-2vrCTqIfaCBR4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jb2xp/dnlzLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMy8wNC9u/b3ctY293b3JraW5n/LW1hcnNlaWxsZS0x/MDI0eDU3Ni53ZWJw", user: theo)
if cowerking.save
  p cowerking.name
end

cowerking = Cowerking.new(name: "Bureau du wagon", price_per_day: 190, description: "Tu seras dev a 93%", address: "Lille", photo: "https://imgs.search.brave.com/v6ts7XemCS_k70CeP7uu5YDItHZkppwlFM6v9I8O_Ug/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9ncm91cC1wZW9w/bGUtd29ya2luZy1j/b3dvcmtpbmctc3Bh/Y2VfMTA0ODk0NC0y/OTIwNTI2OC5qcGc_/c2VtdD1haXNfaHli/cmlk", user: wagon)
if cowerking.save
  p cowerking.name
end

puts "Finished! Created #{Cowerking.count} cowerkings."

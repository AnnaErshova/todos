require "Mysql2"

client = Mysql2::Client.new(
  :host => "192.168.2.2",
  :username => "student",
  :password => "mypass",
  :database => "wizards"
  )

results = client.query("SELECT * from wizards")

results.each do |row|
  puts row
end
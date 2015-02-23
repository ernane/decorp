TabParam.delete_all
Invoice.delete_all
User.delete_all

jr = User.create(first_name: "Ernane", last_name: "Sena", email_address: "ernane.sena@gmail.com")
rr = User.create(first_name: "Renan",  last_name: "Sena", email_address: "nan-sena@gmail.com")

(201501..201512).each do |y|
  correlative = Correlative.number(1,1,Time.new.year)
  Invoice.create(number: correlative, reference: y, user: jr, issue_date: Time.new, due_date: Time.new)
end

(201501..201512).each do |y|
  correlative = Correlative.number(1,1,Time.new.year)
  Invoice.create(number: correlative, reference: y, user: rr, issue_date: Time.new, due_date: Time.new)
end

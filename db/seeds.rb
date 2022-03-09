# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


contact = Contact.new({name: "Teste", email: "teste@email.com", phone_number:"51999992222", address:"Rua teste 1234"})
contact.save

loan = Loan.new({contact_id: contact.id, due_date: "2022-02-20" })
loan.save

thing = Thing.new({description: "Lorem ipsum", loan_id: loan.id})
thing.save
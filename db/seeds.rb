# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

link = List.new
link.title = "Link's List"
link.save!

mike = List.new
mike.title = "Mike's List"
mike.save!

triforce = Task.new
triforce.name = "Obtain the Triforce"
triforce.complete = true
triforce.list_id = 1
triforce.due_date = "2014-05-19"
triforce.save!

bank = Task.new
bank.name = "Go to the Bank"
bank.list_id = 2
bank.complete = false
bank.due_date = "2014-05-19"
bank.save!

groceries = Task.new
groceries.name = "Go to the grocery store"
groceries.list_id = 2
groceries.complete = false
groceries.due_date = "2014-05-18"
groceries.save!

defeat_gannon = Task.new
defeat_gannon.name = "Defeat Gannon"
defeat_gannon.list_id = 1
defeat_gannon.complete = false
defeat_gannon.due_date = "2014-06-07"
defeat_gannon.save!

master_sword = Task.new
master_sword.name = "Find the Master Sword"
master_sword.list_id = 1
master_sword.complete = false
master_sword.due_date = "2014-06-03"
master_sword.save!

start_over = Task.new
start_over.name = "Start the whole thing all over again"
start_over.list_id = 1
start_over.complete = false
start_over.due_date = "2014-07-09"
start_over.save!
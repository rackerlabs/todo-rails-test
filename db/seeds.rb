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
triforce.complete = false
triforce.list_id = 1
triforce.due_date = "2017-02-01"
triforce.save!

master_sword = Task.new
master_sword.name = "Find the Master Sword"
master_sword.list_id = 1
master_sword.complete = false
master_sword.due_date = "2016-02-03"
master_sword.save!

defeat_gannon = Task.new
defeat_gannon.name = "Defeat Gannon"
defeat_gannon.list_id = 1
defeat_gannon.complete = false
defeat_gannon.due_date = "2013-05-07"
defeat_gannon.save!

groceries = Task.new
groceries.name = "Go to the grocery store"
groceries.list_id = 2
groceries.complete = false
groceries.due_date = "2013-04-09"
groceries.save!

bank = Task.new
bank.name = "Go to the Bank"
bank.list_id = 2
bank.complete = false
bank.due_date = "2013-04-10"
bank.save!
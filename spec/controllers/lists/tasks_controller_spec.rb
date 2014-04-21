require 'spec_helper'

describe Lists::TasksController do
	describe "GET #index" do
		it "populates an array of tasks" do
			list = List.create(:title => "some title")
			task = list.tasks.create(:name => "some task")

			get :index, list_id => list.list_id

			assigns(:tasks).should eq([task])
		end

		it "sort task items by due date" do
			list = List.create(:title => "some title")
			task1 = list.tasks.create(:name => "A first task", :due_date => 5.days.ago)
			task3 = list.tasks.create(:name => "C third task", :due_date => 1.day.ago)
			task2 = list.tasks.create(:name => "B second task", :due_date => 3.days.ago)

			get :index, :list_id => list.id, :sort => :due_date

			assigns(:tasks).should eq([task1, task2, task3])
		end
	end
end

require 'rails_helper'

feature 'user creates a task' do
  scenario 'user submits a new task with a complete form' do
    task = build(:task)

    visit new_task_path
    fill_in "task_name", with: task.name
    click_button "commit"

    expect(page).to have_content("task created")
  end

  scenario 'user submits a blank form' do
    visit new_task_path

    click_button "commit"

    expect(page).to have_content("task failed, try again")
    expect(page).to have_content("can't be blank")
  end
end

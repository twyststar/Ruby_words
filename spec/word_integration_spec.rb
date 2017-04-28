require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("word", {:type => :feature}) do
  it("accepts a new word") do
    visit('/')
    click_on('Click here to get started!')
    fill_in('word_input', :with => "Sonder")
    click_button('Add Word')
    click_on('Back to word list')
    expect(page).to have_content("Sonder")
  end
end

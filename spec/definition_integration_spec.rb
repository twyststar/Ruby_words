require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("definition", {:type => :feature}) do
  it("adds a definition to a word") do
    visit('/')
    click_on('Click here to get started!')
    fill_in('word_input', :with => "Sonder")
    click_button('Add Word')
    click_on('Back to word list')
    click_on('Sonder')
    fill_in('definition', :with => 'To look at other people and realize they have their own intricate lives and stories')
    click_button('Add')
    click_on('Back to word list')
    click_on('Sonder')
    click_on('To look at other people and realize they have their own intricate lives and stories')
    expect(page).to have_content('To look at other people and realize they have their own intricate lives and stories')
  end
end

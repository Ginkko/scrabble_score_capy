require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and return a score') do
    visit('/')
    fill_in('score', :with => 'green')
    click_button('Send')
    expect(page).to have_content('6')
  end
end

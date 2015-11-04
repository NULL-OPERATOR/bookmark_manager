require "web_helpers"

feature 'Adding tags' do
	scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in :url,  with: 'http://www.AAARRRGH.com'
    fill_in :name, with: 'o___O'
    fill_in :tags, with: 'bubbles'

    click_button 'Create link'

		visit '/tags/bubbles'
    expect(page).to have_content('bubbles')
	end
end

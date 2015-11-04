require "web_helpers"

feature 'Creates links' do
	scenario 'Stores website links in bookmark' do
		fill_in_form_click

		expect(current_path).to eq '/links'

		within 'ul#links' do
	    expect(page).to have_content('x___X')
		end
	end
end

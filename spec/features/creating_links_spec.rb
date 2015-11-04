feature 'Creates links' do
	scenario 'Stores website links in bookmark' do
		visit '/links/new'
		fill_in :url, with: 'http://www.google.com'
		fill_in :name, with: 'Google'
		click_button 'Create link'

		expect(current_path).to eq '/links'

		within 'ul#links' do
	    expect(page).to have_content('Google')
		end
	end
end

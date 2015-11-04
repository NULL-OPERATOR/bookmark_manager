require "web_helpers"

feature 'Adding tags' do
	scenario 'I can add a single tag to a new link' do
		fill_in_form_click
		bookmark = Bookmark.first
		expect(bookmark.tags.map(&:name)).to include('research')
	end
end

feature 'Adding tags' do
	
	scenario 'I can add a single tag to a new link' do
		visit '/links/new'
		fill_in :url, with: 'http://www.google.com'
		fill_in :name, with: 'Google'
		fill_in :tags, with: 'research'
		
		click_button 'Create link'
		bookmark = Bookmark.first
		expect(bookmark.tags.map(&:name)).to include('research')
	end
end
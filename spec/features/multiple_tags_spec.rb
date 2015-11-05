require "web_helpers"

feature 'Adding tags' do
  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    Bookmark.create(url: 'linkxx', name: 'namexx', tags: [Tag.first_or_create(name: 'bubbles')])
    # fill_in :url,  with: 'AAARRRGH.com'
    # fill_in :name, with: 'o___O'
    # fill_in :tags, with: 'bubbles'
    # click_button 'Create link'
    #
    # fill_in_form_click

    visit '/tags/bubbles'
    within 'ul#links' do
      expect(page).to have_content('bubbles')
      expect(page).not_to have_content('research')
    end
  end
end

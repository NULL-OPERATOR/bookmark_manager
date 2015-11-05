require 'spec_helper'

feature 'Viewing links' do

  scenario 'I can see existing links on the links page' do
    Bookmark.create(url: 'htt..:::.com', name: 'hurrr')

    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('hurrr')
    end
  end
end

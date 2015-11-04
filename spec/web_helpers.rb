def fill_in_form_click
  visit '/links/new'
  fill_in :url,  with: 'http://www.www.www'
  fill_in :name, with: 'x___X'
  fill_in :tags, with: 'research'

  click_button 'Create link'
end

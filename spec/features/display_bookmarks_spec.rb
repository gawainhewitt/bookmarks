feature 'displays bookmarks' do 
  scenario 'shows the list of bookmarks eg. an url of a bookmarked page' do
    visit("/bookmarks")
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.makers.tech"
    expect(page).to have_content "www.waterstones.com"
  end 
end
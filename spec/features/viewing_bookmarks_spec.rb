feature 'Viewing Bookmarks' do
  scenario "visit the index page" do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
  
  scenario "a user cn see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.github.com'
  end
end

feature 'Viewing Bookmarks' do
  scenario "visit the index page" do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end

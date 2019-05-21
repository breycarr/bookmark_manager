feature 'Viewing Bookmarks' do
  scenario "visit the index page" do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario "a user can see bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.bbc.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.com'
  end
end

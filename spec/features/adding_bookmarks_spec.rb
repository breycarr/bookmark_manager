feature 'Adding bookmarks' do
  scenario 'the user should be able to add a new bookmark' do
    visit '/bookmarks'
    fill_in('URL', with: "http://www.makersacademy.com")
    click_button 'Submit'

    expect(page).to have_content 'You have added http://www.makersacademy.com to your bookmarks'
  end
end

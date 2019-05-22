require 'bookmarks'

describe Bookmarks do

  subject(:bookmarks) { described_class.new }

  describe '#show' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      expect(bookmarks.show).to include 'http://www.google.com'
      expect(bookmarks.show).to include 'http://www.bbc.co.uk'
    end
  end

  describe '#add' do
    it "adds a bookmark to the bookmarks database" do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmarks.add('http://www.google.com')
      connection = PG.connect(dbname: 'bookmark_manager_test')
      expect(bookmarks.show).to include('http://www.google.com')
    end
  end
end

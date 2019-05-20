require 'bookmarks'

describe Bookmarks do

  subject(:bookmarks) { described_class.new }

  describe '#show' do
    it 'returns all bookmarks' do
      expect(bookmarks.show).to include 'http://www.github.com'
      expect(bookmarks.show).to include 'http://www.bbc.co.uk'
    end
  end
end

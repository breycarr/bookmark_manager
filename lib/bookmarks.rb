require 'pg'

class Bookmarks

  def show
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }

    # [
    #   "http://www.github.com",
    #   "http://www.bbc.co.uk"
    # ]

  end
end

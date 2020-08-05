require 'pg'

class PeepPost

  def self.all
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec('SELECT * FROM peeps;').map { |peep| peep['url']}
  end
end
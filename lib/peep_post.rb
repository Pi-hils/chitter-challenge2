require 'pg'

class PeepPost

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec('SELECT * FROM peeps;').map { |peep| peep['url']}
  end
end
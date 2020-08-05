gem install pg
irb
require 'pg'
connection = PG.connect(dbname: 'chitter')
result = connection.exec(SELECT * FROM peeps)
result.each { |peep| p peep}

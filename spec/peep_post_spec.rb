require 'spec_helper'
require 'peep_post'


describe PeepPost do

  describe '.all' do
    it 'returns all post' do

      connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps (url) VALUES ('post 1');")
    connection.exec("INSERT INTO peeps(url) VALUES('post 2');")
    connection.exec("INSERT INTO peeps (url) VALUES('post 3');")

      peeps = PeepPost.all

      expect(peeps).to include('post 1')
      expect(peeps).to include('post 2')
      expect(peeps).to include('post 3')
    end
  end
end
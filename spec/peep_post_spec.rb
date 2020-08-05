require 'spec_helper'
require 'peep_post'

describe PeepPost do

  describe '.all' do
    it 'returns all post' do
      peeps = PeepPost.all

      expect(peeps).to include('post 1')
      expect(peeps).to include('post 2')
      expect(peeps).to include('post 3')
    end
  end
end
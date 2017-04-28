require('rspec')
require('definition')
require('word')
require('pry')

describe Definition do
  before() do
    Definition.clear()
  end

  describe('#initialize') do
    it("will let you enter a definition") do
      test_def = Definition.new({:definition=> 'To look at other people and realize they have their own intricate lives and stories'})
      expect(test_def.definition()).to(eq('To look at other people and realize they have their own intricate lives and stories'))
    end
  end
  describe('.find') do
    it("will locate a definition by id") do
      test_def = Definition.new({:definition=> 'To look at other people and realize they have their own intricate lives and stories'})
      expect(test_def.id()).to(eq(1))
    end
  end
end
